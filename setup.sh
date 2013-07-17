# repo for latest git
sudo add-apt-repository ppa:pdoes/ppa

# emacs24 repo
# https://launchpad.net/~cassou/+archive/emacs
sudo apt-add-repository -y ppa:cassou/emacs

sudo apt-get update

# Install environment
sudo apt-get install -y git bash-completion emacs24 emacs24-el emacs24-common-non-dfsg

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
./install.sh $1
