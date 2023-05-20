# My dotfiles

### Overview 

Creating an optimized development is important. When switching to a new machine it can be difficult or tedious 
to have to re-download and setup everything. This is a handy configuration which allows automation of dotfiles.
This is useful as when I get a new machine I am going to be doing work from I am not slowed by the lack of tooling
needed for an optimal dev env.

### Setup

The setup here is fairly simple. Once this directory is cloned you will need to run the `createLinks.sh` script. This
will create symbolic links to all of the config files and avoids mess of actually going into the private dot files. I 
found this idea [here](https://superuser.com/questions/152574/keeping-my-zsh-or-bash-profile-synced-up-on-all-my-machines#answer-152600). 

Commands:

    1. `chmod 777 createLinks.sh`
    2. `./createLinks.sh`


## My Preferred VIM (NVIM) Text Editor Layout

#### Overview 

This is a simple configuration file for setting up a .vimrc setup file. The usefulness 
is that instead of consistently needing to change my .vimrc manually I can pull this config
via [this repository](https://github.com/julianjones95/vimrc). Feel free to use this repo.

#### Setup

To set this up all you need is to copy the text from .vimrc into your .vimrc file. Commands 
for this are as follows:

1. Run the command `vim ~/.vimrc`
2. Take the contents from here: [.vimrc](https://github.com/julianjones95/vimrc/blob/master/.vimrc) 
3. Paste them into the file and close the file (:wq)
4. Observe the changes inside vim 
