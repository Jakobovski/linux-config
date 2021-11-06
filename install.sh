wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# install lazy gi
sudo add-apt-repository ppa:lazygit-team/release

sudo apt-get update
sudo apt-get -y install lazygit tcsh zsh fish htop git git-gui terminator curl ruby ruby-dev ruby-colorize

# This wont work on ARM so lets keep it separate so the above dont fail
sudo apt-get -y install sublime-text 


# install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

git config --global pager.branch false

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sudo gem install colorls

#  Setup shells
wget -O ~/.tcshrc https://raw.githubusercontent.com/Jakobovski/linux-config/main/.tcshrc
wget -O ~/.zshrc https://raw.githubusercontent.com/Jakobovski/linux-config/main/.zshrc
wget -O ~/.p10k.zsh https://raw.githubusercontent.com/Jakobovski/linux-config/main/.p10k.zsh
~/.fzf/install --all



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
