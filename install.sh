#!/bin/bash
print () {
    RED='\033[0;32m'
    NOCOLOR='\033[0m'
    echo -e "${RED} $1 ${NOCOLOR}"
}

#print "Installer script for linux debian based distros"

#print "installing Snap for linux flatpacks" 

#sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
#sudo apt install snapd


print "Installing Brave Browser"
curl -fsS https://dl.brave.com/install.sh | sh


print "installing gimp"
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo apt-get update
sudo apt-get install gimp  -y
sudo apt-get install gimp-plugin-registry  -y
sudo apt-get install gimp-resynthesizer  -y

print "installing Discord"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --silent com.discordapp.Discord

print "installing Zoom"
flatpak install --noninteractive flathub us.zoom.Zoom

print "installing VLC" 
sudo apt install vlc -y

print "Installing Kolourpaint"
sudo apt-get install kolourpaint

print "installing spotify"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

print "YT-downloader"
flatpak install flathub io.github.aandrew_me.ytdn

print "Installing Vscode"
wget http://192.168.1.86:8888/code.deb && sudo apt install -y ./code.deb && rm ./code.deb

print "Installing SimpleScreenRecorder" 
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo apt update
sudo apt install -y simplescreenrecorder

print "Installing patience card game"
flatpak install flathub org.kde.kpat

print "installing chrome"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.google.Chrome

print "installing telegram desktop client"
flatpak install --assumeyes flathub org.telegram.desktop

print "installing WhatsAppclient: ZapZap"
flatpak install flathub com.rtosta.zapzap
flatpak run com.rtosta.zapzap
