// if no password set
passwd

sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate holo

sudo pacman -S nasm
sudo pacman -S gcc

sudo steamos-readonly enable
