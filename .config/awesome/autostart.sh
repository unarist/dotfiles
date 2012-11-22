#!/bin/bash

# Start GNOME Keyring
# ref: https://wiki.archlinux.org/index.php/Gnome-keyring#Use_Without_GNOME
if [ -x /usr/bin/gnome-keyring-daemon ]; then
	eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
	export SSH_AUTH_SOCK
	export GPG_AGENT_INFO
	export GNOME_KEYRING_CONTROL
	export GNOME_KEYRING_PID
fi

# Start NetworkManager Applet
if [ `pgrep -xc NetworkManager` -a -x /usr/bin/nm-applet ]; then
	nm-applet&
fi
