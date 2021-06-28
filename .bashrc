if [ -f ~/.bash/.bashrc_default ]; then
    . ~/.bash/.bashrc_default
else
    echo "Warning: ~/.bash/.bashrc_default didn't get sourced in '.bashrc' file.";
fi

alias wit='\git --git-dir="${HOME}"/.warfiles/ --work-tree="${HOME}"'

Exists() { which "${1}" &> /dev/null; echo ${?}; }

# Make sudo work with aliases
alias sudo="sudo "

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls -Ap1 | egrep "^\..*$"'

alias src='source ~/.bashrc'
alias untar='tar -xvzf'
alias rr='reset'

alias gits='git status'

# -----[ Pacman and Yay ]----- {{{
alias pacman='sudo pacman'
alias p='sudo pacman'
alias pi='sudo pacman -S'
alias pu='sudo pacman -Syu'
alias y='yay'
alias yi='yay -S'
alias yu='yay -Syu'

# Remove a package and its deps that aren't needed by any other installed package.
alias pr='sudo pacman -Rs'
# Show pacman cache.
alias pcache='du -sh /var/cache/pacman/pkg/'
# Clean pacman cache.
alias pclean='sudo pacman -Sc'
# List all packages (pacman and non-AUR).
alias plsa='sudo pacman -Qqe'
# List all pacman ONLY (non-AUR / non-foreign) packages.
alias pls='sudo pacman -Qqen'
# List all non-AUR / non-foreign packages ONLY.
alias yls='sudo pacman -Qqm'

export NORMAL_VIM="vim -p";
export VISUAL="vim -p";
export EDITOR="vim -p";

if [ $(Exists "nvim") -eq 0 ]; then

    # If nvim is installed only open nvim when vim is opened.
    # Pane mode.    
    export VISUAL="nvim -p"
    export EDITOR="nvim -p";
fi

alias vdiff="\${VISUAL} -d"

alias vi="\${NORMAL_VIM}"




