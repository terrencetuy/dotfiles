#!/bin/bash

# installs dotfiles by creating symlinks to home directory

# TODO: currently script is dependent on having the cwd be the directory
#       that the script is located, bad things happen when this isn't the case

# let me use regex
shopt -s extglob

cur_dir=`dirname $(readlink -f $0)`

# loop through all the files in current directory
for f in ?(\.)+(*); do
	# ignore files that shouldn't be symlinked
	#  (the current directory, parent directory, git directory, and this file )
	# TODO: current file should not be hardcoded
	if [[ $f != "install.sh"  && $f != ".."  && $f != "."  && $f != ".git" ]];
	then
		ln -sf $cur_dir/$f $HOME/$f 
	fi
done
