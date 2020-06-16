# make sure we got tools to get scripts
sudo apt install --no-install-recommends -y git curl clang-format cscope ctags clang

# install vimrc file
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# add self liked plugs
cat $(dirname $0)/plugs.vim >> ~/.vimrc

echo let g:clang_library_path="\"`find /usr -name libclang* | grep "\.so*" | tail -n 1`\"" >> ~/.vimrc
