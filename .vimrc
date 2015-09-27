"Don't use tabs, but spaces, with 4 chars indentations"
set shiftwidth=4
set tabstop=4
set shiftround
set expandtab

"not case sensitive"
set ignorecase

set number

if &t_Co > 2 || has("gui_running")
    syntax on
    set autoindent
    set hlsearch
endif

"settings to remap ctrl-arrow for tmux"
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
