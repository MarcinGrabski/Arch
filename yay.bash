#!/bin/bash

# Aktualizacja systemu
sudo pacman -Syu

# Instalacja niezbędnych pakietów
sudo pacman -S --needed base-devel git

# Tworzenie katalogu na repozytoria i klonowanie yay
mkdir -p ~/repos
cd ~/repos
git clone https://aur.archlinux.org/yay.git
cd yay

# Budowanie i instalowanie yay
makepkg -si
