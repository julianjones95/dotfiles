#Creates symbolic links for all dotfiles that need to be instantiated
#
# Start by getting the script path this directory lives:

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"


# .vimrc
rm ~/.vimrc
ln -s $SCRIPTPATH/vim/vimrc ~/.vimrc
