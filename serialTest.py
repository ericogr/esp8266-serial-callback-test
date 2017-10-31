#!/usr/bin/env python

import serial
import time

serial = serial.Serial('/dev/ttyUSB0', 115200, timeout=1)
cpt = 0

while 1:
    serial.write('{}'.format(cpt))
    time.sleep(0.1)

    try:
        reading = serial.readline().decode()
        print 'esp: ' + reading
        cpt = cpt + 1
    except:
        print 'serial error'
