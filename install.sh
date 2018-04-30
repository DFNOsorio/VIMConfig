:ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule foreach git pull origin master

cd ./bundle/youcompleteme
git submodule update --init --recursive
sudo python3 ./install.py
