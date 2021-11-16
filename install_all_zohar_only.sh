wget -O setuplinux.sh https://raw.githubusercontent.com/Jakobovski/linux-config/main/install.sh; source setuplinux.sh

# Create SSH key if no SSH dir
DIR="~/.ssh/"
if [ -d "$DIR" ]; then
  ssh-keygen -t ed25519 -C "zoharj@gmail.com"
  ssh-add ~/.ssh/
fi

# Setup git
git config --global user.email "zoharj@gmail.com"
git config --global user.name "Zohar Jackson"
