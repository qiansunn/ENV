rm -rf ~/.vim_runtime
rm -rf ~/.oh-my-zsh

LS_COLORS+=':ow=01;33'
LS_COLORS+=:ow=
echo "export LS_COLORS+=':ow=01;33'" >> ~/.profile
echo "$LS_COLORS" | sed 's/:/\n/g' | grep -v '\*.'

git clone --depth=1 https://github.com/sunnlo/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
