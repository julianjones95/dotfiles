# My Development Environment

### Justification 

Creating an optimized development is important. When switching to a new machine it can be difficult or tedious 
to have to re-download and setup everything. This is a handy configuration which allows automation of dotfiles.
This is useful as when I get a new machine I am going to be doing work from I am not slowed by the lack of tooling
needed for an optimal dev env.

### Setup

Once this directory is cloned from github you will need to run the `createLinks.sh` script. This
will create symbolic links to all of the config files and avoids mess of actually going into the private dot files. I 
found this idea [here](https://superuser.com/questions/152574/keeping-my-zsh-or-bash-profile-synced-up-on-all-my-machines#answer-152600). 

Commands to run after downloading packages:

    1. `chmod 777 createSymLinks.sh`
    2. `./createLinks.sh`

## Text Editor Setup (NVIM)

I prefer to use neovim as my text editor. The usefulness of having some of the neovim plugins allow extra speed 
and shortcuts during development. Syntax highlighting inside NVIM as well as auto suggestion are useful and 
allow me to continually get faster using vim.

#### Setup

1. Get the most recent version of neovim. If your package manager gives you problems follow the github repo and compile from source.
2. Everything should auto download via packer and the config from `init.lua`

## Commandline Shell (ZSH)

I have been using zsh for almost 10 years so without realizing it I got 
comfortable. After trying out OMZ the git branch indicators and
git status indicators were really helpful. Syntax highlighting, and autosuggest
were also useful plugins.

#### Setup

1. Check to see the current shell: `echo $SHELL`
2. If not downloaded download zsh. You can check the version by running `zsh --version`
3. Change shell to zsh: `chsh -s $(which zsh)`

1. Download oh my zsh: `sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"`
2. download syntax highlighting: `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting` 
3. download: powerlevel10k; `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`


## Windows Manager (TMUX)

Tmux is a staple in my workflow. The necessity to have multiple terminals running software can be hard to manage. 
Using Tmux makes managing this in one window fast and simple. I often split my windows into 4 usually with nvim and 
terminals for compilation.

#### Setup

1. Download TMUX


## Terminal Emulator (iTerm2)

iTerm2 is useful as this allows great formatting. As well as a useful history of syntax completion and many other useful features.

#### Setup

1. Download iTerm2

