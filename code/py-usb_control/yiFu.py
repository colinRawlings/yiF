class yiFu(object):
    def __init__(self, addr=None, verbose_mode=False):
        import serial

        # --- attributes
        self.verbose = verbose_mode
        self.addr = addr
        self.lens_desc = ''
        self.move_timeout_ms = 1000

        # --- r properties
        self._status = None  # a dict interpreting the various status bits
        self._FL = None
        self._FD = None
        self._min_FL = None
        self._max_FL = None

        # --- start the lens
        self.connect()
        self.init_lens()

    @property
    def status(self):
        """
        status register of the lens
        :return: dict of detailing the state of the lens' status register
        """

        # --- get 0 padded string representation of status register
        response = self.send_lens_cmd(['90', 'B9', '00'], fast_mode=True)
        state_str = bin(int('0x' + response['MISO'][2], 16))
        state_str = state_str[2:]
        for p in range(8 - len(state_str)):
            state_str = '0' + state_str

        self._status = dict(AF_switch=bool(int(state_str[0])),
                            F_move=bool(int(state_str[5])),
                            F_acc=bool(int(state_str[2])),
                            FD_endStop=bool(int(state_str[3])),
                            status_byte=state_str)

        return self._status

    @property
    def min_FL(self):
        """

        :return: the lens' minimium focal length in mm as an integer
        """

        return self._min_FL

    @property
    def max_FL(self):
        """

        :return: the lens' maximium focal length in mm as an integer
        """

        return self._max_FL

    @property
    def FL(self):
        """

        :return: the current focal length of the lens in mm as an integer
        """

        response = self.send_lens_cmd(['A0', '00', '00'], fast_mode=True)
        FL_hex = '0x' + response['MISO'][1] + response['MISO'][2]
        self._FL = int(FL_hex, 16)
        return self._FL

    @FL.setter
    def FL(self, value):

        print('FL can only be set manually')

    @property
    def FD(self):
        """

        :return: the current focal distance in lens encoder tics as an integer
        """

        response = self.send_lens_cmd(['C0', '00', '00'], fast_mode=True)

        FD_hex = '0x' + response['MISO'][1] + response['MISO'][2]
        self._FD = int(FD_hex, 16)
        return self._FD

    @FD.setter
    def FD(self, target_FD):
        step = target_FD - self.FD
        MSB, LSB = self.signed_decimal_to_two_bytes(step)

        response = self.send_lens_cmd(['44', MSB, LSB, '00', '00', '00'], fast_mode=True)

        self.wait_focus_move()

    def wait_focus_move(self):
        """

        method which blocks execution until the lens completes its move

        :return:
        """

        import time

        T0 = time.time()

        finished = False
        aborted = False

        while not finished:
            T1 = time.time()
            the_status = self.status

            if not the_status['F_move'] or the_status['FD_endStop']:
                finished = True

            if 1e3 * (T1 - T0) > self.move_timeout_ms:
                finished = True
                aborted = True

        if aborted:
            print('wait_focus_move timed out')
        elif self.verbose:
            print('move complete in {}s'.format(T1 - T0))

    @staticmethod
    def signed_decimal_to_two_bytes(value):
        """
        convert to lens format

        :param value: signed integer
        :return: most significant byte, least significant byte as hex without leading '0x'
        """

        hex_str = hex(value & 0xffff)
        hex_str = hex_str[2:]
        for p in range(4 - len(hex_str)):
            hex_str = '0' + hex_str

        return hex_str[0:2], hex_str[2:4]

    def get_EFu_addr(self):
        """

        assumes that the yiFu is the device attached to /dev/tty.usbmodem####

        function for opening the serial port

        :return: a string containing the path to the serial port
        """

        import subprocess as sp

        output = sp.check_output(['ls', r'/dev/'])
        devList = self.div_str_into_lines(output)

        # - get the ttyUSBmodem device
        arduino_found = False
        for dev in devList:
            if 'tty.usbmodem' in dev:
                arduino_found = True
                ard_addr = dev

        if not arduino_found:
            raise RuntimeError('No arduino found')

        return '/dev/' + ard_addr

    @staticmethod
    def div_str_into_lines(the_str):
        """
        break up a literal string into a list of lines.  Helper function.

        :param the_str: an input string containing r'\n' characters
        :return: a list containing a string with the lines (all newlines chars are removed)
        """

        lines = []
        curr_line = ''
        n_char = 0

        while n_char < len(the_str):
            if the_str[n_char] != '\n':
                curr_line = curr_line + the_str[n_char]
            else:
                lines.append(curr_line)
                curr_line = ''
            n_char += 1

        return lines

    def serial_wr(self, cmd_str, endComm='----------------END\r\n', r_timeout=5):
        """

        :param cmd_str: Comma separated list of hex codes to pass to the lens.  First character should be a + to switch
         to fast mode or a - to switch to slow mode.
        :param endComm: The last line of the response that the arduino will send
        :param r_timeout: how to wait for the endComm line before giving up

        :return: A list of strings corresponding to the formatted response from the lens.
        """

        import time

        self.ser.flushInput()

        if not self.ser.isOpen():
            raise RuntimeError('Serial port is closed')

        # --- perform write then read response
        self.ser.write(cmd_str)

        finished = False
        lines = []
        start_time = time.time()
        while not finished:

            line = self.ser.readline()

            if self.verbose:
                line_disp = line.replace('\r', '')
                line_disp = line_disp.replace('\n', '')
                print(line_disp)

            lines.append(line)
            if line == endComm:
                finished = True

            if time.time() - start_time > r_timeout:
                finished = True

        return lines

    def send_lens_cmd(self, cmd_list, fast_mode):
        """


        :param cmd_list: list of hex bytes (as strings) to pass to the lens.  e.g. ['00','0A','FF','00']
        :param fast_mode: Whether the clock speed used when transmitting to the lensshould be fast (500kHz) or slow
         (100kHz).
        :return: a dictionary summarising the result of sending the command to the lens
        """

        # --- build command string
        if fast_mode:
            cmd_str = '+'
        else:
            cmd_str = '-'

        for byte in cmd_list:
            cmd_str = cmd_str + byte + ','
        cmd_str = cmd_str[0:len(cmd_str) - 1]

        # --- write
        response = self.serial_wr(cmd_str)

        # --- parse response
        result = self.parse_lens_response_str(response)

        response_error = False
        if (len(result['MOSI']) != len(cmd_list)) \
                or (len(result['MISO']) != len(cmd_list)):
            response_error = True

        # --- handle error
        if result['timedOut']:
            print('Command timed out')

        if self.verbose or result['timedOut'] or result["interface_error"] or response_error:
            for line in result['return_str']:
                disp_line = line.replace('\n', '')
                print(disp_line)

        if result['timedOut'] or result["interface_error"] or response_error:
            raise RuntimeError()

        return result

    @staticmethod
    def parse_lens_response_str(response):
        """
        analyse the list of strings provided by yiFu following the transmission of a lens command

        :param response: list of strings (one per line) of data returned by yiFu after the transmission of a lens command
        :return: a dictionary summarising the result of the command
                    - list of strings: 'MOSI' and 'MISO'
                    - boolean: 'timedOut'
                    - boolean: 'lens_error' lens reports an error
                    - boolean: 'fastMode'
                    - list of strings: 'return_str' (copy of the input returned by the serial port)

        """

        import re

        result = dict(MOSI=[], MISO=[], timedOut=False, interface_error=False)
        result['return_str'] = response

        for line in response:

            if "Error" in line:
                result["interface_error"] = True

            if 'Timed out' in line:
                result['timedOut'] = True

            if 'fast mode' in line:
                result['fastMode'] = 1

            if 'slow mode' in line:
                result['fastMode'] = 0

            for ch in ['MOSI', 'MISO']:
                if ch in line:
                    for match in re.finditer('Ox', line):
                        result[ch].append(line[match.start() + 2:match.start() + 4])

        return result

    def disconnect(self):
        """

         closes the serial port

        :return: None
        """
        self.ser.close()

    def connect(self):
        """
        try to connect over the serial port to the device at self.addr.

        If this is None it will try to guess the address


        :return: None
        """

        import serial

        if self.addr == None:
            self.addr = self.get_EFu_addr()

        self.ser = serial.Serial(self.addr, 115200, timeout=1)
        if self.ser.isOpen():
            print('Opened port: {}'.format(self.addr))
        else:
            raise RuntimeError('Failed to open the serial port: {}'.format(self.addr))

    def init_lens(self):
        """

        Perform hand shake with the lens.  Observed for EFs STM lens on a 650D.  Required to activate motors.

        :return:
        """

        response = self.send_lens_cmd(['00'], fast_mode=False)
        response = self.send_lens_cmd(['0A', '00'], fast_mode=False)

        if response['MISO'][1] != 'AA':
            print(response['return_str'])
            raise RuntimeError('Lens initialisation failed')

        response = self.send_lens_cmd(['0A', '00'], fast_mode=True)

        cmd = ['80', '0A']
        for n in range(10):
            cmd.append('00')

        response = self.send_lens_cmd(cmd, fast_mode=True)

        self._min_FL = int('0x' + response['MISO'][4], 16)
        self._max_FL = int('0x' + response['MISO'][6], 16)

        if self.min_FL == self.max_FL:
            self.lens_desc = '{} mm prime lens'.format(self.min_FL)
        else:
            self.lens_desc = '{}-{} mm tele lens'.format(self.min_FL, self.max_FL)

        print('initialised {}'.format(self.lens_desc))

    def go_minFD(self):
        """
        go to the lens' min focus distance

        :return:
        """

        response = self.send_lens_cmd(['06', '00', '00', '00'], fast_mode=True)
        self.wait_focus_move()

    def go_infFD(self):
        """
        focus the lens at infinity

        :return:
        """

        response = self.send_lens_cmd(['05', '00', '00', '00'], fast_mode=True)
        self.wait_focus_move()
