#!/bin/bash
ssh win 'C:\Tools\MultiMonitorTool.exe /disable LEN67BE BNQ78F8'
sleep 1
ddcutil --bus 5 setvcp 60 0x11
ddcutil --bus 9 setvcp 60 0x12
sleep 2
kscreen-doctor output.HDMI-A-1.enable output.HDMI-A-2.enable

