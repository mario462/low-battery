# low-battery
Simple service that runs in the background and plays a sound when your laptop battery is low.

In order to install the service, just run `sudo ./install.sh USER`, where USER is the user the service will run for.

Configuration of the service will be defined in `/etc/low-battery.conf`

The program relies solely on the `pulseaudio` sound server.
 
If you find it useful give me a star :)
