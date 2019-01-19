# Resin.io Repository for Crowdsourced ADSB + Raspberry Pi #

This Repository was created to push config to multiple Raspberry Pi's connected to Resin.io to push ADSB data to Flightaware from multiple Raspberry Pi's.

### Resin.io? ###

* Allows management of multiple IoT devices running Docker. 
* Can manage multiple Raspberry Pi devices using a single Dockerfile template and variables on an application and device level.
* [Learn More](https://resin.io/)
* [Signup](https://dashboard.resin.io/signup)

### Flightaware? ###

* FlightAware is the world's largest flight tracking data company.

### The problem? ###

* Typically Flightaware is setup by installing a unique image onto a Raspberry Pi and configuring it.
* Each device is manually configured.
* There is no ability for remote configuration and changing the way a device functions.
* There is no remote management of devices.

### The solution? ###

* Using resin.io all devices can be remotely monitored and controlled.
* Docker is using to control installations and the running of each device. This also allows remote access.
* Resin.io controls variables for each device and application, so secrets such as username and password, and variables such as GPS co-ordinates, can be passed to the device.
* If variables are changed in Resin (e.g. the device is moved to a new location and GPS coordinates need to be changed), these automatically update the device remotely with the new values.

### Prerequisites ###

* See the following [list](https://flightaware.com/adsb/piaware/build)