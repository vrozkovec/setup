# repo for latest git
sudo add-apt-repository ppa:pdoes/ppa
sudo apt-get update
sudo apt-get install git

# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi
git clone https://github.com/vrozkovec/dotfiles.git
cd dotfiles
./install.sh
