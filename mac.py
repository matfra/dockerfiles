#!/usr/bin/python
import socket
import sys
from netaddr import *

class mac_custom(mac_unix): pass
mac_custom.word_fmt = '%.2X'
hostname = socket.gethostname()
mac = EUI(hostname, dialect=mac_custom)
print (mac)
