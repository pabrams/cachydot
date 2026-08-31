#!/bin/bash
kscreen-doctor output.HDMI-A-1.disable output.HDMI-A-2.disable
ddcutil --bus 5 setvcp 60 0x12
ddcutil --bus 9 setvcp 60 0x11
sleep 2
ssh win 'C:\Tools\MultiMonitorTool.exe /enable LEN67BE BNQ78F8'

