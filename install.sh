# install lazy git
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get -y install lazygit tcsh htop git git-gui

#  Setup tcshrc
wget -O ~/.tcshrc https://github.com/Jakobovski/linux-config/blob/main/.tcshrc

# Setup git autocomplete
wget https://github.com/git/git/blob/master/contrib/completion/git-completion.tcsh -P ~/; mv ~/git-completion.tcsh ~/.git-completion.tcsh
wget https://github.com/git/git/blob/master/contrib/completion/git-completion.bash -P ~/; mv ~/git-completion.bash ~/.git-completion.bash

