# synology-configs

During major system updates the contents of /etc/init get overwritten.

To solve this you need to log in as root `sudo -i` then copy the following files:

- `cp etc-profile /etc/profile`
- `cp *.conf /etc/init/`

To start the services run:

- `start transmission-daemon`
- `start flexget`

The other files shouldn't need replacing like this.
