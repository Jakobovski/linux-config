sudo sh -c "echo 'HandleLidSwitch=hibernate' >> /etc/systemd/logind.conf"
sudo sh -c "echo 'HandleLidSwitchDocked=ignore' >> /etc/systemd/logind.conf"
sudo sh -c "echo 'HandleLidSwitchExternalPower=ignore' >> /etc/systemd/logind.conf"
