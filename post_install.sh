
######## P O S T   I N S T A L L A T I O N #######
sudo pacman -Syu --noconfirm
		# X O R G  /  D R I V E R S #
# activate [community] repo in /etc/pacman.conf
sudo pacman -S --noconfirm mesa lib32-mesa xf86-video-intel vulkan-intel wayland

		# Y A Y ( AUR )#
sudo pacman -S --noconfirm base-devel
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

		# I 3 / S W A Y #
sudo pacman -S --noconfirm i3-gaps i3lock dmenu compton nitrogen conky-lua lib32-libxrandr libxrandr xorg-xrandr polybar xtitle siji-git xorg-xprop xorg-xkill gnome-screenshot arandr
yay -S --noconfirm wlroots sway waybar ulauncher swaylock wl-clipboard flameshot alacritty termite
sudo pacman -S --noconfirm gdm
sudo systemctl enable gdm
yay -Sy --noconfirm libmpdclient volumeicon

		# S H E L L #

sudo pacman -S --noconfirm terminator xfce4-terminal rxvt-unicode zsh wget
# Installation of OH-MY-ZSH from the github (best way to install!!)
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#./zsh-spaceship.sh
## powerlevel10k theme
cd /tmp
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
## TODO Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc

		# F O N T S #
yay -S --noconfirm powerline powerline-fonts ttf-font-awesome otf-font-awesome ttf-unifont nerd-fonts-complete


######## S Y S T E M           #########

		# N E T W O R K #

sudo pacman -S --noconfirm networkmanager dhclient network-manager-applet openvpn networkmanager-openvpn
sudo systemctl enable NetworkManager

		# B L U E T O O T H #

sudo pacman -S --noconfirm bluez bluez-utils gnome-bluetooth gnome-shell gnome-control-center
sudo systemctl enable bluetooth

        # S Y S T E M  T O O L S # 

sudo pacman -S --noconfirm git htop sensord sysstat glances openssh
sudo pacman -S --noconfirm numlockx inxi dmidecode hddtemp net-tools mlocate hardinfo
numlockx on


        # A P P L I C A T I O N S # 
## outlook supporting mail client
#sudo pacman -S --noconfirm evolution evolution-ews 
yay -S --noconfirm slack-desktop kubectl thefuck htop variety google-cloud-sdk python-powerline-git task trellowarrior zathura

# better search with catfish and dependancies - in depth string search
sudo pacman -S --noconfirm catfish 

