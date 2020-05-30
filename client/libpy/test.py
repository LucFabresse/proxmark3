#!/usr/bin/env python3

import pm3

pm3.open("/dev/ttyACM0")
pm3.console("hw status")
pm3.close()
