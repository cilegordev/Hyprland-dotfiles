#!/bin/sh

# Still Remember Should I Use Kali Linux?
# DOC https://www.kali.org/docs/introduction/should-i-use-kali-linux/

echo PRIVACY LOCKED 
sudo rmmod -f pcspkr
sleep 1 
# amixer sset Capture 25000
# sleep 1
amixer sset Capture 0%
sleep 1
amixer sset Capture nocap
sleep 1
amixer sset Master 75%
sleep 1
sudo rmmod -f uvcvideo
# sleep 1 
# sudo rmmod -f snd_pcm
sleep 1
sudo rmmod -f bluetooth
sleep 1
sudo rfkill block bluetooth
sleep 1
sudo systemctl disable cups
sleep 1
sudo /etc/init.d/ssh cups
sleep 1
sudo systemctl disable ssh.service
sleep 1
sudo /etc/init.d/ssh stop
sleep 1
echo TURN ON PORTAL HYPRLAND 
sleep 1
killall -e xdg-desktop-portal-wlr
killall xdg-desktop-portal
killall xdg-desktop-portal-gnome
killall xdg-desktop-portal-kde
killall xdg-desktop-portal-hyprland
sleep 1
/usr/lib/xdg-desktop-portal-hyprland &
/usr/libexec/xdg-desktop-portal-hyprland &
sleep 1
/usr/lib/xdg-desktop-portal-hyprland &
/usr/libexec/xdg-desktop-portal &
sudo xhost si:localuser:root
echo "\e[1;31mWarning: you are using the root account. You may harm your system 💀\e[0m"
echo DONE! 
