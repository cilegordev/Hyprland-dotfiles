#!/bin/sh

# Still Remember Should I Use Kali Linux?
# DOC https://www.kali.org/docs/introduction/should-i-use-kali-linux/

echo PRIVACY LOCKED 
sleep 1
sudo rmmod -f pcspkr
# amixer sset Capture 25000
amixer sset Capture 0%
amixer sset Capture nocap
amixer sset Master 75%

sleep 1
sudo rmmod -f uvcvideo
# sleep 1
# sudo rmmod -f snd_pcm
sudo rmmod -f bluetooth
sudo rfkill block bluetooth
sudo systemctl disable cups
sudo /etc/init.d/ssh cups
sudo systemctl disable ssh.service
sudo /etc/init.d/ssh stop

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

sleep 1
xhost +si:localuser:root &
echo "\e[1;31mWarning: you are using the root account. You may harm your system 💀\e[0m"
echo DONE! 
