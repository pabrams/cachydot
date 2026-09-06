#!/bin/bash
kscreen-doctor output.HDMI-A-1.disable output.HDMI-A-2.disable output.DP-2.disable
# ddcutil --bus 5 setvcp 60 0x12
ddcutil --model "L27i-4A" setvcp 60 0x12 || notify-send "monitors" "Lenovo push FAILED"
# ddcutil --bus 9 setvcp 60 0x11
ddcutil --model "BenQ GW2790" setvcp 60 0x11 || notify-send "monitors" "BenQ push FAILED"
# ddcutil --bus 8 setvcp 60 0x11
ddcutil --model "ES-G24C1L" 60 0x11 || notify-send "monitors" "BenQ push FAILED"
# ddcutil --bus 7 setvcp 60 0x11
sleep 2
ssh win 'C:\Tools\MultiMonitorTool.exe /enable LEN67BE BNQ78F8 XEC2360'
