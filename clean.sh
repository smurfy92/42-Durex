#!/bin/bash
rm /etc/init.d/Durex
rm /etc/rc*.d/*Durex
rm /bin/shell
rm /bin/Durex
systemctl stop Durex.service
systemctl disable Durex.service
rm /etc/systemd/system/Durex.service
rm /etc/systemd/system/multi-user.target.wants/Durex.service
rm /var/lock/matt_daemon.lock
systemctl daemon-reload
systemctl reset-failed