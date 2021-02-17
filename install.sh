sudo apt-get -y install git-gui

# install lazy git
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get -y install lazygit


# Setup git autocomplete
wget https://github.com/git/git/blob/master/contrib/completion/git-completion.tcsh -P ~/; mv ~/git-completion.tcsh ~/.git-completion.tcsh
wget https://github.com/git/git/blob/master/contrib/completion/git-completion.bash -P ~/; mv ~/git-completion.bash ~/.git-completion.bash

