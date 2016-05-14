sudo apt-get update

sudo apt-get install chromium-browser
sudo apt-get install pepperflashplugin-nonfree
sudo apt-get install conky-all
sudo apt-get install vlc
sudo apt-get install tmux
sudo apt-get install git
sudo apt-get install htop
sudo apt-get install unrar
sudo apt-get install xclip

#Docker
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo touch /etc/apt/sources.list.d/docker.list
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee  /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-get install linux-image-extra-$(uname -r)
sudo apt-get install docker-engine
sudo groupadd docker
sudo usermod -aG docker mhor

#Docker compose
sudo -i
curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
exit

#Oh My Git
# CLI background color: #003B49
git clone https://github.com/arialdomartini/oh-my-git.git ~/.oh-my-git && echo source ~/.oh-my-git/prompt.sh >> ~/.bashrc
#see: https://github.com/arialdomartini/oh-my-git#install-the-patched-font
cd /tmp
git clone http://github.com/gabrielelana/awesome-terminal-fonts
cd awesome-terminal-fonts
git checkout patching-strategy
mkdir -p ~/.fonts
cp patched/*.ttf ~/.fonts
sudo fc-cache -fv ~/.fonts

cd ~

# remember install:
# - codecs (flac...)
# - unrar
# - ...

sudo apt-get update
sudo apt-get upgrade
