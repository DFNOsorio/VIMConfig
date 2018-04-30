ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule foreach git pull origin master

cd ~/.vim/bundle/youcompleteme
git submodule update --init --recursive
sudo python3 ./install.py

cd ~/.vim/bundle/tagbar
git submodule add https://github.com/universal-ctags/ctags.git ctags
cd ctags
./autogen.sh
./configure # defaults to /usr/local
make
make install # may require extra privileges depending on where to install
