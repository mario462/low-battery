# low-battery
Simple service that runs in the background and plays a sound when your laptop battery is low.

In order to install the service, just run the `install.sh` script as root.

Configuration of the service will be defined in `/etc/low-battery.conf`

The program relies on the `pulseaudio` sound server, as well as on the `aplay` command-line player.
 
If you find it useful give me a star :)
