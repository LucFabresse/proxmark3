#!/usr/bin/env python3

import pm3

pm3.mainlib_open()
pm3.CommandReceived("hw status")
pm3.mainlib_close()
