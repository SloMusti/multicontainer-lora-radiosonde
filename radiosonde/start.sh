#!/bin/bash

# Setup host DBUS socket location, which is needed for NetworkManager.
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

# Start the main application.
cd radiosonde_auto_rx/auto_rx/
python auto_rx.py -c /data/station.cfg -v

