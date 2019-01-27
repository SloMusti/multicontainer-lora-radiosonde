#!/bin/bash

# Setup host DBUS socket location, which is needed for NetworkManager.
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

# Start the main application.
cd radiosonde_auto_rx/auto_rx/
#create logging directory if not there yet
mkdir -p /data/log/
#copy the example config if there yet, does not overwrite
cp -n station.cfg.example /data/station.cfg
#start the auto_rx with config and loggig path
python auto_rx.py --config /data/station.cfg --log /data/log -v
