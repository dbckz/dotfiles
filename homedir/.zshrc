#!/bin/zsh

# Load all the configuration files located in ~/.zsh
for z in ~/.zsh/*.zsh; do
    source $z;
done

# Alias to reload zsh configuration on the fly
alias sz="source ~/.zshrc"
