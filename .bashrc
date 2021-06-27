if [ -f ~/.bash/.bashrc_default ]; then
    . ~/.bash/.bashrc_default
else
    echo "Warning: ~/.bash/.bashrc_default didn't get sourced in '.bashrc' file.";
fi

alias wit='\git --git-dir="${HOME}"/.warfiles/ --work-tree="${HOME}"'
