wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# install lazy gi
sudo add-apt-repository ppa:lazygit-team/release

sudo apt-get update
sudo apt-get -y install lazygit tcsh zsh fish htop git git-gui terminator

# This wont work on ARM so lets keep it separate so the above dont fail
sudo apt-get -y install sublime-text 

#  Setup tcshrc
wget -O ~/.tcshrc https://raw.githubusercontent.com/Jakobovski/linux-config/main/.tcshrc


# Setup git autocomplete
wget https://github.com/git/git/blob/master/contrib/completion/git-completion.tcsh -P ~/; mv ~/git-completion.tcsh ~/.git-completion.tcsh
wget https://github.com/git/git/blob/master/contrib/completion/git-completion.bash -P ~/; mv ~/git-completion.bash ~/.git-completion.bash

# Change default shell
sudo usermod --shell /bin/tcsh `whoami`

# Create SSH key if no SSH dir
DIR="~/.ssh/"
if [ -d "$DIR" ]; then
  ssh-keygen -t ed25519 -C "zoharj@gmail.com"
  ssh-add ~/.ssh/
fi

# Setup git
git config --global user.email "zoharj@gmail.com"
git config --global user.name "Zohar Jackson"

# =============================================================
# For laptop config
# =============================================================
sudo sh -c "echo 'HandleLidSwitch=hibernate' >> /etc/systemd/logind.conf"
sudo sh -c "echo 'HandleLidSwitchDocked=ignore' >> /etc/systemd/logind.conf"
sudo sh -c "echo 'HandleLidSwitchExternalPower=ignore' >> /etc/systemd/logind.conf"






