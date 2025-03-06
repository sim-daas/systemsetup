sudo apt update
sudo apt upgrade
firefox
sh <(curl -L https://nixos.org/nix/install) --daemon
nix
nix-shell -p neofetch
nix-shell -p nixpkgs.neofetch
nix-shell -p neofetch
nix-env -q
sudo su
nano /etc/nix/nix.conf 
sudo nano /etc/nix/nix.conf 
sudo reboot
git
nix-shell -p neofetch
nix-shell -p git
alacritty
dmenu
nix-shell -p alacritty
nix-shell -p dmenu
sudo apt install alacritty
alacritty 
sudo apt remove alacritty
nix-env -iA nixpkgs.alacritty nixpkgs.dmenu
alacritty
dmenu
nix-env -iA nixpkgs.openssh
sudo systemctl enable ssh
sudo systemctl enable openssh
sudo systemctl enable openssh-server
sudo systemctl enable ssh-server
openssh
nix-env -q
nix-env -e dmenu alacritty openssh
nix-collect-garbage
nix-collect-garbage -d
sudo apt install openssh
sudo apt install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
kitty
kitty
clear
freshfetch 
thunar
brave
nix-shell -p kitty
nix-shell -p thunar
nix-shell -p neofetch
nix-shell -p freshfetch
nix-shell -p xfce.thunar
nix-shell -p brave
nix-env -q
nix-collect-garbage -d
sudo su
alacritty
clear
thunar
mate-wm
mate-terminal
clear
nix-env -p foot
nix-shell -p foot kitty
ay
clear
nix-shell -p alacritty
nix run --impure github:guibou/nixGL --alacritty
nix run --impure github:guibou/nixGL --program alacritty
nix run --impure github:guibou/nixGL alacritty
df -H
clear
nix-collect-garbage -d
nix-collect-garbage 
clear
sudo shutdown now
mate-wm
sudo apt install i3 i3status dmenu
mate-wm --replace i3
ls -a
clear
mate-wm --replace i3
mkdir .config/i3
mkdir .config/i3status
cd .config/i3
nano config
cd ..
cx i3status/
cd i3status/
nano config
sudo apt install nitrogen
cd
clear
sudo nano /usr/share/xsessions/i3.desktop
sudo apt install dex
sudo reboot now
mate-terminal
clear
cat .config/i3/config 
nano .config/i3/config 
sudo apt install rofi alacritty
nano .config/i3/config 
sudo apt install rofi alacritty
nano .config/i3/config 
sudo apt install rofi alacritty dmenu

nano .config/i3/config 
fastfetch
fastfetch --list-logos
fastfetch --logo Garuda
fastfetch --logo GarudaDragon
fastfetch --logo Garuda_small
clear
fastfetch --list-logos
fastfetch --logo "bodhi"
fastfetch --logo "void"
fastfetch --logo "puppy"
clear
fastfetch --list-logos
fastfetch --logo "venom"
fastfetch --logo "venom_small"
fastfetch --logo "vnux"
fastfetch --logo "vzlinux"
fastfetch --list-logos
fastfetch --logo "zorin"
clear
fastfetch --logo "venom_small" | lolcat
fastfetch --logo "venom_small" 
lolcat | fastfetch --logo "venom_small" 
clear
fastfetch --logo "venom_small" 
mkdir .config/fastfetch/
nano .config/fastfetch/config
fastfetch --logo "venom_small" 
mv .config/fastfetch/config .config/fastfetch/config.conf
fastfetch --logo "venom_small" 
clear
fastfetch --logo "venom_small" 
fastfetch --os --uptime --packages --cpu --memory --battery --logo "venom_small"
fastfetch -os --uptime --packages --cpu --memory --battery --logo "venom_small"
fastfetch --uptime --packages --cpu --memory --battery --logo "venom_small"
fastfetch -h
fastfetch --config .config/fastfetch/config.conf 
fastfetch --generate-config 
fastfetch --gen-config 
rm .config/fastfetch/config.conf 
nano .config/fastfetch/config.jsonc 
fastfetch
fastfetch --logo "venom_small" 
fastfetch --list-logos
fastfetch --logo kali 
fastfetch --logo popos
fastfetch --logo debian
fastfetch --logo debian_small
nano .config/fastfetch/config.jsonc 
fastfetch --logo debian_small
nano .config/fastfetch/config.jsonc 
fastfetch --logo debian_small
nano .config/fastfetch/config.jsonc 
fastfetch --logo debian_small
clear
fastfetch --logo debian_small
fastfetch --logo parrot
fastfetch --logo arch
fastfetch --logo arch_small
fastfetch --logo kali
fastfetch --logo kali_small
fastfetch --logo kali
fastfetch --logo arch
ubuntu@Aspire-i
clear
fastfetch --logo arch
clear
fastfetch
nix-shell -p fastfetch
nix-shell -p fastfetch lolcat
sudo shutdown now
sudo reboot now
mate-disk-usage-analyzer 
sudo shutdown now
midori
nix-shell -p midori
nix-env -iA nixpkgs.midori
cat .config/i3/config 
mate-appearance-properties 
tgpt -i
rofi
nix-shell -p tgpt
nix-shell -p tgpt xfce.thunar rofi
mate-font-viewer 
midori
nix-env -iA nixpkgs.midori
midori
locale
nix-shell
nix-shell -p ranger
cd /usr/share/backgrounds/
ls
nix-shell -p ranger
ranger
locale
[200~locale  # check for UTF-8
sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
locale
export LC_ALL="en_US.UTF-8"
sudo export LC_ALL="en_US.UTF-8"
echo "LC_ALL=en_US.UTF-8" | sudo tee -a /etc/environment
echo "en_US.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
echo "LANG=en_US.UTF-8" | sudo tee -a /etc/locale.conf
sudo locale-gen en_US.UTF-8
locale
nix-shell -p ranger
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
nix-env -iA nixpkgs.distrobox
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt install docker-ce
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
clear
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
apt-key list docker
apt-key export docker | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-key.gpg
apt-key list docker
sudo apt update
cd /etc/apt
sudo cp trusted.gpg trusted.gpg.d
sudo apt update
lsb_release -c
sudo nano /etc/apt/sources.list.d/additional-repositories.list
sudo apt update
sudo rm /etc/apt/sources.list.d/additional-repositories.list
sudo apt update
sudo nano /etc/apt/sources.list.d/docker.list
cd
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker run -it ubuntu
sudo docker run -it ubuntu
docker run -it ubuntu
export LOCALE_ARCHIVE="$(nix-env --installed --no-name --out-path --query glibc-locales)/lib/locale/locale-archive"
nix
clear
docker
nix-env -q
cd /
nix
nix-env -q
sudo su
clear
cd
nix-env -iA nixpkgs.ranger
ranger
docker rm
docker rm hungry_turing practical_leakey
docker rm practical_leakey 
docker ps -a
mount --make-rshared 
sudo mount --make-rshared 
mount --help
distrobox create -i ubuntu
distrobox enter ubuntu 
ranger
clear
newgrp docker
locale
locale
nix-shell -p tgpt
distrobox list
nix-env -e distrobox
distrobox list
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
distrobox list
docker images
docker images rm ubuntu
docker rmi ubuntu
docker images
docker ps
docker inspect i3wm
nix
clear
sudo apt update
sudo apt install i3 
clear
sudo apt install alacritty
alacritty 
nano /usr/share/xsessions/i3dbox.desktop
vi /usr/share/xsessions/i3dbox.desktop
sudo apt install vi
sudo apt install vim
sudo apt install nano
nano /usr/share/xsessions/i3dbox.desktop
sudo nano /usr/share/xsessions/i3dbox.desktop
sudo cp /usr/share/xsessions/i3dbox.desktop .
ls
nano i3dbox.desktop 
distrbox rm ubuntu
distrobox rm ubuntu
distrobox rm -f ubuntu
distrobox create -i ubuntu:24.04 --name i3wm 
clear
distrobox enter i3wm
cat /usr/share/xsessions/i3.desktop 
ls
clear
which bash
sudo nano /usr/bin/i3dbox
sudo chmod +x /usr/bin/i3dbox
sudo nano /usr/bin/i3dbox
nano i3dbox.desktop 
sudo nano i3dbox.desktop 
sudo cp i3dbox.desktop /usr/share/xsessions/.
clear
distrobox list
distrobox enter i3wm 
sudo nano /usr/share/xsessions/i3dbox.desktop 
sudo nano /usr/bin/i3dbox 
sudo nano /usr/share/xsessions/i3dbox.desktop 
sudo apt install xterm xinit
i3
distrobox enter i3wm 
mate-session-inhibit 
mate-session-inhibit logout
sudo mate-session-inhibit logout
sudo apt install icewm
cp /usr/share/xsessions/icewm-session.desktop ~/
ls
cat icewm-session.desktop 
distrobox enter i3wm 
sudo nano /usr/bin/icewm
sudo chmod +x /usr/bin/icewm
nano icewm-session.desktop 
sudo cp ~/icewm-session.desktop /usr/share/xsessions/icewm-session.desktop
sudo nano /usr/bin/icewm
/usr/bin/distrobox-enter -T -n i3wm -- "icewm-session"
which distrobox
sudo nano /usr/bin/i3dbox 
ls
firefox
sudo apt install brave
cat .config/i3/config 
nano .config/i3/config 
nano .config/i3status/config 
cat .config/i3status/config 
nix-shell -p tgpt
tgpt -i
cat .config/i3status/config | tgpt "make my i3statusbar darker with less colours and no icons"
nano .config/i3status/confige
mv .config/i3status/config .config/i3status/config.bak
mv .config/i3status/confige .config/i3status/config
nano .config/i3status/config.bak 
mv .config/i3status/config .config/i3status/config.rm
mv .config/i3status/config.bak .config/i3status/config
nix-env -iA nixpkgs.polybar
nix-env -e polybar
sudo apt install polybar
mkdir -p $HOME/.config/polybar/
nano $HOME/.config/polybar/launch.sh
cp /etc/polybar/config.ini .config/polybar/.
nano $HOME/.config/polybar/launch.sh
nano $HOME/.config/polybar/config.ini 
nano $HOME/.config/polybar/launch.sh
cgmod +x $HOME/.config/polybar/launch.sh
chmod +x $HOME/.config/polybar/launch.sh
./$HOME/.config/polybar/launch.sh
.$HOME/.config/polybar/launch.sh
sh $HOME/.config/polybar/launch.sh
nano .config/i3/config 
nano .config/polybar/config.ini 
ls .config/
neofetch
fastfetch
mkdir .config/alacritty
cd .config/alacritty
nano alacritty.toml
cd .config/alacritty
nano alacritty.toml
cd .config/alacritty
nano alacritty.toml
cd .config/alacritty
nano alacritty.toml
cd .config/alacritty
nano alacritty.toml
cd .config/alacritty
nano alacritty.toml
nano .config/i3status/config
nano .config/i3/config 
ls
ranger
mate-volume-control
sudo nano /usr/bin/icewm 
ranger
cd .config/
nano i3/config 
cd .config/
nano i3/config 
cd .config/
nano i3/config 
cd .config/alacritty
nano alacritty.toml
cd ..
cd i3
nano config 
neofetch
nm-applet 
pactl
cd .config/
nano i3/config 
cd .config/polybar/
nano config.ini 
cd ..
cd i3
nano config 
cd ..
nano alacritty/a
nano alacritty/alacritty.toml 
cd .config/
ls
sudo apt install picom
mkdir picom
which picom
which picom.conf
where picom.conf
ls
cd picom/
ls
nano picom.conf
cd ..
cd o3
cd i3
nano config 
cd .config/
cd i3
nano config 
sudo apt remove picom
cd .config/
rm -r picom/
cd i3
nano config 
sudo apt install picom
cd .c
cd .config/
ls
mkdir picom
cd picom
nano picom.conf
cd ..
nano i3/config 
nano picom/picom.conf 
nano alacritty/alacritty.toml 
cd .config/
nano picom/picom.conf 
sudo apt remove picom
cd .config/
nano alacritty/alacritty.toml 
nano
ranger
cd .config/
nano alacritty/alacritty.toml 
sudo apt install brightnessctl
nano .config/i3/config 
tgpt -i
brightnessctl 
brightnessctl  &
brightnessctl  -h
brightnessctl  s 25%
sudo brightnessctl  s 25%
sudo brightnessctl  s 40%
nano .config/i3/config
nix-shell -p tgpt
ranger
nano .config/i3/config
nano .bashrc
brightnessctl s 5%-
sudo brightnessctl s 5%-
sudo brightnessctl s 5%+
sudo brightnessctl s 5%-
sudo brightnessctl s 5%+
sudo brightnessctl s 5%-
sudo brightnessctl s 5%+
sudo brightnessctl s 5%-
sudo apt install fastfetch
nix-env -iA nixpkgs.fastfetch
fastfetch --logo opensuse_tumbleweed 
fastfetch --logo opensuse_tumbleweed -
nano .bashrc
sudo shutdown now
ranger
sudo brightnessctl s 5%+
cd .config/
nano alacritty/alacritty.toml 
cd .config/polybar/
nano config.ini 
ranger
cd .config/
nano i3/config
nano polybar/config.ini 
tmux
sudo apt install tmux
sudo apt install nani
sudo apt install nala
nix-env -e fastfetch
nala install fastfetch
sudo nala install fastfetch
sudo nala install lf
lf
sudo nala remove lf
clear
nano alacritty/alacritty.toml 
sudo apt install nala 
sudo nala install polybar rofi nitrogen
docker container commit -p i3wm ubuntu-dbox
docker images
nano /usr/share/xsessions/i3dbox.desktop 
nano /usr/bin/i3dbox 
ranger
nano .config/tmux/tmux.conf
cd .config/tmux
mkdir .config/tmux
nano .config/tmux/tmux.conf
nano .bashrc
cat .config/alacritty/alacritty.toml 
tmux
nano picom.conf 
tmux-select 
nano .bashrc
cd
nano .bashrc
tmux ls
unset tmux
unset tmux force
nala install fzf
sudo nala install fzf
fzf
find
find . -type f -name ".*" -o -type f | fzf
rg
sudo nala install rg
sudo rg --files --hidden --glob '!*' | fzf
sudo find / \( -type f -name ".*" \) -o \( -type f ! -name ".*" \) | fzf
find . -type f -name ".*" -o -type f | fzf
find . -type d | fzf
nano .bashrc
tmux kill-server
tmux ls
unset tmux force
nano .bashrc
top
sudo nala install htop
htop
nano .bashrc
tmux
tmux ls
tmux kill-server
pwd
ls
cd
pwd
nano .bashrc
pwd
ls
tmux ls
nano .bashrc
tmux kill-server
tmux
nano .bashrc
tmux
rnager
ranger 
nix-env -e ranger
sudo nala install ranger
clear
nano alacritty.toml 
cat /tmp/Alacritty-47661.log 
nano alacritty.toml 
nano .bashrc
tmux kill-server
nano config
nano tmux.conf 
ls
tmux kill-server
nano tmux.conf 
ollama
ollama run phi2
ollama run phi3:mini
nix-shell -p ollama
ollama-serve
ollama serve
nix-shell -p ollama
nix-collect-garbage -d
df -h
nano alacritty.toml 
fzf
cat .bashrc
nano .bashrc 
clear
cd
nano .bashrc
nano picom.conf 
sudo nala install picom
nano picom.conf 
sudo nala install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev meson ninja-build uthash-dev
nano picom.conf 
nano config
picom
nano config
picom
nano alacritty.toml 
ranger
locale
ranger
nix-env -p ranger
nix-shell -p ranger
ls
nano shell.nix
nix-shell -p ranger
nix-shell
nano shell.nix
nix-prefetch-url 
nano shell.nix
y
nix-shell
locale
sudo dpkg-reconfigure locales
locale
echo tmux
echo $TMUX
tmux kill-server
nano tmux.conf 
nano .bashrc 
unset TMUX
nano .bashrc
clear
cd
nano .bashrc
tmux kill-server
tmux
clear
tmux
sudo shutdown now
sudo brightnessctl s 5%+
sudo brightnessctl s 5%-
sudo brightnessctl s 5%+
distrobox list
distrobox rm i3wm
distrobox rm -f i3wm
df -H
docker images
distrobox create -i ubuntu:24.04 --name i3wm 
distrobox enter i3wm
distrobox stop i3wm 
distrobox enter i3wm 
nano .bashrc
ranger
ls
rm clear 
nano tmux.conf 
tmux
sudo shutdown now
neofetch
history
distrobox enter i3wm
which zsh
which $zsh
zsh
sudo apt install zsh
clear
ls -a
chsh
which zsh
chsh
ls -a
which $SHELL
clear
tmux
which $SHELL
chsh
tmux
cat .bashrc 
nix-env 
which nix
nix-env -iA nixpkgs.fzf
nix-env -e fzf
tgpt -i
fastfetch --logo opensuse_tumbleweed
clear
fastfetch --logo opensuse_tumbleweed
fastfetch --logo void
clear
fastfetch --logo void
fastfetch --logo torizoncore
fastfetch --logo sparky
fastfetch --logo opensuse_tumbleweed
fastfetch --print-logos
clear
fastfetch --print-logos
fastfetch --logo opensuse_tumbleweed
clear
fastfetch --logo opensuse_tumbleweed
fastfetch --logo debian
fastfetch --logo debian | lolcat
clear
fastfetch --logo garuda
fastfetch --logo ka
fastfetch --logo opensuse_tumbleweed --h
fastfetch --logo opensuse_tumbleweed -h
fastfetch --logo opensuse_tumbleweed -color blue
fastfetch --logo opensuse_tumbleweed --color blue
fastfetch --logo opensuse_tumbleweed --color red
fastfetch --logo opensuse_tumbleweed --color green
nano .config/fastfetch/config.jsonc 
mv .config/fastfetch/config.jsonc .config/fastfetch/config.jsonc.bak
nano .config/fastfetch/config.jsonc 
fastfetch 
nano .config/fastfetch/config.jsonc 
fastfetch 
nano .config/fastfetch/config.jsonc 
fastfetch 
cat config.jsonc 
rm .config/fastfetch/config.jsonc 
cp config.jsonc .config/fastfetch/config.jsonc 
fastfetch 
fastfetch --logo opensuse_tumbleweed 
nano .config/fastfetch/config.jsonc 
fastfetch --logo opensuse_tumbleweed 
nano .config/fastfetch/config.jsonc 
fastfetch --logo opensuse_tumbleweed 
nano .config/fastfetch/config.jsonc 
fastfetch --logo opensuse_tumbleweed 
nix-shell -p fastfetch
nix-shell -p fastfetch lolcat
fastfetch --logo opensuse_tumbleweed 
fastfetch 
clear
fastfetch --logo opensuse_tumbleweed
clear
fastfetch --logo opensuse_tumbleweed
clear
fastfetch --logo opensuse_tumbleweed
clear
fastfetch --logo opensuse_tumbleweed
clear
fastfetch --logo opensuse_tumbleweed
clear
fastfetch --logo opensuse_tumbleweed
brave
chmod +x /nix/store/zdz5ky6w5di6b661yydx714vwffpa7vf-brave-1.67.123/opt/brave.com/brave/chrome-sandbox 
sudo chmod +x /nix/store/zdz5ky6w5di6b661yydx714vwffpa7vf-brave-1.67.123/opt/brave.com/brave/chrome-sandbox 
brave
sudo chmod 4755 /nix/store/zdz5ky6w5di6b661yydx714vwffpa7vf-brave-1.67.123/opt/brave.com/brave/chrome-sandbox 
brave
fastfetch --logo opensuse_tumbleweed
btop
nala
sudo nala install i3 polybar nitrogen rofi alacritty picom nano tmux
sudo nala install i3 polybar nitrogen rofi alacritty picom nano tmux fzf ranger zoxide 
sudo nala install i3 polybar nitrogen rofi alacritty picom nano tmux fzf ranger zoxide zsh
sudo chsh
chsh
which zsh
chsh
zsh
ranger
sudo apt update
sudo apt install nala
sudo nala install i3 polybar nitrogen rofi alacritty picom neovim tmux fzf ranger zoxide zsh git python3.12-venv make gcc
chsh
vim /etc/ni
clear
vim /etc/nix/nix.conf 
sudo vim /etc/nix/nix.conf 
alacritty
cd Desktop/
ls
chmod +x omniverse-launcher-linux.AppImage 
./omniverse-launcher-linux.AppImage 
ls
./omniverse-launcher-linux.AppImage --appimage-extract 
ls
rm -r squashfs-root/
export LOCALE_ARCHIVE="$(nix-env --installed --no-name --out-path --query glibc-locales)/lib/locale/locale-archive"
export LOCALE_ARCHIVE="$(nix-env --installed --no-name --out-path --query glibclocales)/lib/locale/locale-archive"
export LOCALE_ARCHIVE="$(nix-env --installed --no-name --out-path --query glibcLocales)/lib/locale/locale-archive"
python3
python3 extension_examples/base_sample/base_sample.py
sudo apt install openjdk-21-jdk -y
cd Downloads/TLauncher.v10/
sudo java -jar TLauncher.jar 
thunar
cd
sudo QT_X11_NO_MITSHM=1 /nix/store/wpx66xb089rr4irvdq2xjbxdcwknbcxr-unetbootin-702/bin/.unetbootin-wrapped
unetbootin 
ventoy
cd Downloads/TLauncher.v10/
sudo java -jar TLauncher.jar 
connman
connman-gtk 
cmst
econnman-bin 
connman
connmand
econnman-bin 
connmanctl 
./a.out 
gcc demo.c 
./a.out 
gcc demo.c 
./a.out 
gcc area.c 
./a.out 
gcc area.c 
./a.out 
gcc greater.c 
./a.out 
gcc bill.c 
./a.out 
gcc char.c 
./a.out 
gcc char.c 
./a.out 
gcc char.c 
./a.out 
gcc char.c 
./a.out 
gcc char.c 
./a.out 
gcc char.c 
./a.out 
gcc char.c 
./a.out 
gcc calc.c 
./a.out 
gcc month.c 
./a.out 
okular
cd Downloads/TLauncher.v10/
sudo java -jar TLauncher.jar 
cd Downloads/TLauncher.v10/
sudo java -jar TLauncher.jar 
rustup
rustup update
rustup install
rustup install -h
rustup install --profile minimal
rustup install --profile minimal --toolchain stable
rustup install --profile minimal -- --toolchain
rustup install --profile minimal -- --toolchain stable
rustup install --profile minimal stable
rustup update
rustup -h
rustup show
shutter 
shutter
s
shutter
cd Downloads/TLauncher.v10/
sudo java -jar TLauncher.jar 
nvidia-smi
nmap
nmap -sn 10.42.0.1/24
nmap -sn -A 10.42.0.1/24
sudo nmap -sn -A 10.42.0.1/24
sudo nmap -sn -O 10.42.0.1/24
nmap -sn -O 10.42.0.1/24
nmap -sn -A 10.42.0.1/24
nmap -sn 10.42.0.1/24
nmap -sn 10.42.1.1/24
nmap -sn 10.42.0.1/24
bluetooth
bluetoothd
blueman-manager 
shutter 
booth 
millipixels
