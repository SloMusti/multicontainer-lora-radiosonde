# Introduction
This balena.io setup implements a multi-container configuration where TheThingsNetwork LoraWAN gateway is running in one container, the Radiosonde decoder using an SDR radio and Raspberry Pi display. Note this can be used just to implement any one of these functions.

Note, this is proof of concept and requires improvements.

Repositories combined:
 * https://github.com/jpmeijers/ttn-resin-gateway-rpi - LoraWAN GW
 * https://github.com/projecthorus/radiosonde_auto_rx - Radiosonde SDR decoder
 * https://github.com/balena-io-projects/balena-dash - Raspberry Pi Display

How to get things going: Glone and install on Balena.io, then for Lora container configure service variables as described in the repository. Radiosonde container requires a station.cfg file, which is automatically created in location `/data/` and you can edit it there. Then it is persistent through upgrades. Also, you logs are written to `/data/log/`.

Edit config: `nano /data/station.cfg`

## Hardware
Raspberry Pi 2B or 3B with RAK831 or IMST IC-880A LoraWAN RF frontend and RTL-SDR receiver (1-3 of them) via USB for Radiosonde decoding.
