#!/bin/bash
ssh win 'C:\Tools\MultiMonitorTool.exe /disable LEN67BE BNQ78F8 XEC2360'
sleep 1
kscreen-doctor output.HDMI-A-1.enable output.HDMI-A-2.enable output.DP-2.enable
sleep 1
ddcutil --model "L27i-4A" setvcp 60 0x11 || notify-send "monitors" "Lenovo pull FAILED"
ddcutil --model "BenQ GW2790" setvcp 60 0x12 || notify-send "monitors" "BenQ pull FAILED"
# ES has no pull — press its input button; DP-2 is already lit and waiting


