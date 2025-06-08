if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

# https://github.com/jonhoo/configs/blob/master/shell/.config/fish/config.fish
function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
    echo -n (hostnamectl hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end

# Aliases
alias ll="eza --long --group-directories-first"
alias lla="eza --all --long --group-directories-first"
alias bat="bat --theme=Boron"
alias editfish="nvim ~/.dotfiles/.config/fish/config.fish"
alias editvim="nvim ~/.dotfiles/.config/nvim/lua/config/lazy.lua"
alias copy="wl-copy"
alias paste="wl-paste"
alias dotfiles="cd ~/.dotfiles/"
