#!/bin/zsh

# Remove all entries in ~/.ssh/known_hosts matching the pattern
function remove_host () {
   sed -i '' "/$1/d" ~/.ssh/known_hosts
	 }
