#/bin/sh

# install zsh and oh-my-zsh
sudo apt install -y curl zsh fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

# install plugins
# autojump
sudo apt install -y autojump
zsh -c "source ~/.zshrc && omz plugin enable autojump"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
zsh -c "source ~/.zshrc && omz plugin enable zsh-syntax-highlighting"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
zsh -c "source ~/.zshrc && omz plugin enable zsh-autosuggestions"

