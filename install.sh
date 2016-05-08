#/bin/sh
if [ -f ~/.vimrc ]; then
    echo "Save old .vimrc config as .vimrc_old"
    mv ~/.vimrc ~/.vimrc_old
fi
if [ -d ~/.vim ]; then
    echo "Save old .vim dir as .vimrc_old"
    if [ -d ~/.vim_old ]; then
        rm -rf ~/.vim_old
    fi
    mv ~/.vim ~/.vim_old
fi
cp -r .vimrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "Finished"
