#!/usr/bin/env python3

import libpm3

libpm3.mainlib_open()
libpm3.CommandReceived("hw status")
libpm3.mainlib_close()
