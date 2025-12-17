# Create aliases

export EDITOR=nvim
export VISUAL=nvim

alias c='clear'
alias cls="clear"
alias g="git clone"
alias n="nvim"
alias rm='rm -r'

alias cd="z"

alias ls='lsd -a'
alias ff='fastfetch'
alias cm='cmatrix -C blue'

alias mvenv='python -m venv .venv'
alias av='source .venv/bin/activate.fish'
alias dv='deactivate'

set -U fish_greeting
set fish_color_command green
set -gx EDITOR /usr/bin/nvim
set -gx VISUAL /usr/bin/nvim
set -gx BROWSER /usr/bin/firefox
set -gx HYPRSHOT_DIR "$HOME/screenshots"

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

zoxide init fish | source

starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end
