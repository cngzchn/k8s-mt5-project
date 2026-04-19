#!/bin/bash
# Start virtual display
Xvfb :1 -screen 0 1024x768x16 &
sleep 2

# Start MT5 in portable mode
wine64 /mt5/terminal64.exe /portable