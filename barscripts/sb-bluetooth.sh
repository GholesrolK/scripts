#!/bin/bash

# Check if Bluetooth device is connected
if bluetoothctl info | grep -q "Connected: yes"; then
    # Bluetooth device is actively connected
    echo ""
fi