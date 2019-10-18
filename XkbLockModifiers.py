#! /usr/bin/python3
# vim: set cc=80 tw=79:

# Turn off Caps Lock (as fixed by diegogs in askubuntu questions 80254)

from ctypes import *
import subprocess

class Display(Structure):
    """ opaque struct """

X11 = cdll.LoadLibrary("libX11.so.6")
X11.XOpenDisplay.restype = POINTER(Display)

display = X11.XOpenDisplay(c_int(0))
X11.XkbLockModifiers(display, c_uint(0x0100), c_uint(2), c_uint(0))
X11.XCloseDisplay(display)
