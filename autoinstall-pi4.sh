#!/bin/bash
clear

#    rpi-fbcp Installing by wdmomo

echo -e "       \033[0;32m█              █\033[0m     "
echo -e "  \033[0;33m█\033[0m     \033[0;32m█            █\033[0m     \033[0;33m█"
echo -e "\033[0;33m  █  ████████████████████  █"
echo -e "\033[0;33m  ███████\033[1;37m██\033[0;33m████████\033[1;37m██\033[0;33m███████"
echo -e "\033[0;33m  ██████████████████████████"
echo -e "\033[0;33m    ██████████████████████ "
echo -e "\033[0;33m     ████████████████████  "
echo -e "\033[0;33m        █             █   "
echo -e "\033[0;33m       █               █  "
echo ""
echo ""
echo "*****************************************************************"
echo "*                                                               *"
echo "*                      rpi-fbcp by wdmomo                       *"
echo "*                                                               *"
echo "*****************************************************************"
sleep 3
cd Pi4Binary/
sudo install fbcp /usr/local/bin/fbcp
cd /etc/
sudo sed -i 's/fbcp\ &//g' rc.local
sudo sed -i '/^exit\ 0/i\fbcp\ &' rc.local
sudo sed -i '$a spi-bcm2835' modules
sudo sed -i '$a fbtft_device' modules
cd /boot/
sudo sed -i 's/#dtparam=spi=on/dtparam=spi=on/g' config.txt
sudo sed -i '$a dtoverlay=pwm-2chan,pin=18,func=2' config.txt
sudo sed -i '$a dtoverlay=pitft28-resistive,rotate=270,speed=60000000,fps=60' config.txt
sudo sed -i '$a hdmi_force_hotplug=1' config.txt
sudo sed -i '$a hdmi_group=2' config.txt
sudo sed -i '$a hdmi_mode=87' config.txt
sudo sed -i '$a hdmi_cvt=320 240 60 1 0 0 0' config.txt
sudo rm -rf rpi-fbcp/
sudo rm -rf rpi-fbcp-master/
cd ~
sudo rm -rf rpi-fbcp/
sudo reboot
