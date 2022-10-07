
# Upon starting a new Ubuntu:
Ubuntu Software -- Spotify


## programs to install
```
sudo apt install git
sudo apt install make
sudo apt install curl
sudo apt install vim
sudo apt install vim-gtk
sudo apt install mercurial
```

https://dlang.org/download.html
    dmd Ubuntu/Debian x86_64 

z fuzzy search
https://github.com/rupa/z

## some repos to grab
```
cd ~
git clone https://bitbucket.org/jamieborder/dotfiles/src/default/

git clone https://github.com/rupa/z.git
vi ~/.bashrc
    . ~/path/to/z.sh
```

## installing plugins for vim
pathogen:
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
vundle:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
and run
```
:PluginInstall
```
in vim

## appearance (turn on ambiance):
```
sudo apt install gnome-tweak-tool
```
then search `tweaks' and turn on ambiance

### setting folder colours:
```
dircolors -p > ~/.dircolors
```
and edit folders to 32 (green)
in terminal, set color for green: #478764

## ma code
```
git clone https://jamieborder@bitbucket.org/jamieborder/qu1d.git
```
need:
```
sudo apt install libblas-dev liblapack-dev
sudo apt install libatlas-base-dev 
```
