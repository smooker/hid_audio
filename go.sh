#!/bin/bash
printf '01%030d' | xxd -ps -r | sudo tee /dev/hidraw0
cat /sys/class/hidraw/hidraw0/device/report_descriptor | hidrd-convert -o spec
