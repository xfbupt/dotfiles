if status is-interactive
    # Commands to run in interactive sessions can go here
end

#fish_config theme save "Catppuccin Latte"
#fish_config theme save "Catppuccin Frappe"
#fish_config theme save "Catppuccin Macchiato"
fish_config theme choose "Catppuccin Mocha"
#fish_config theme choose "TokyoNight Night"
#
#set up NEOVIM as a default editor.
set -gx EDITOR nvim
set -gx GIT_EDITOR nvim


# fetches the best possible documentation to work with for any command
function cheatsheet
    curl https://cheat.sh/$argv
end

# Either attach or create a new tmux session
function tt
    tmux new-session -A -s $argv
end

function proxy
    export http_proxy="http://localhost:20171"
    export https_proxy="http://localhost:20171"
end

function dproxy
    export http_proxy
    export https_proxy
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# Changing "ls" to "eza"
alias l='eza -lg --color=always --icons --group-directories-first' # my preferred listing
#alias ls='eza -alg --color=always --icons --group-directories-first' # my preferred listing

alias ll='eza -alg --color=always --icons --group-directories-first'

alias la='eza -a --color=always --group-directories-first' # all files and dirs
alias lt='eza -aT --color=always --group-directories-first' # tree listing

alias llg="eza --tree --level=2 --long -g --icons --git"

# Show only the dotfiles
alias l.='eza -a | grep -E "^\."'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

alias v='nvim'
alias nv='nvim'

## abbr
#abbr -a -- nv nvim
#abbr -a -- v nvim
abbr -a -- lg lazygit
abbr -a -- zz exit

## single key
abbr -a -- c clear
abbr -a -- h history

## better ls
#abbr -a -- l 'ls -UF'
#abbr -a -- la 'ls -lah'
#abbr -a -- ldot 'ls -ld .*'
#abbr -a -- ll 'ls -lGFh'
#abbr -a -- lsa 'ls -aGF'

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Set up fzf key bindings
fzf --fish | source

zoxide init fish | source

thefuck --alias | source
