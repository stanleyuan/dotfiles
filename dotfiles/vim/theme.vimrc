" _____ _
"|_   _| |__   ___ _ __ ___   ___
"  | | | '_ \ / _ \ '_ ` _ \ / _ \
"  | | | | | |  __/ | | | | |  __/
"  |_| |_| |_|\___|_| |_| |_|\___|


let g:rehash256 = 1
let option = "gruvbox"

if has('nvim')
  let plugged_directory = '~/.local/share/nvim/plugged'
else
  let plugged_directory = '~/.vim/plugged'
endif

if option == "molokai"
    if !empty(glob(plugged_directory.'/molokai/colors/molokai.vim'))
        color molokai
    endif
elseif option == "monokai"
    if !empty(glob(plugged_directory.'/vim-monokai/colors/monokai.vim'))
        color monokai
    endif
elseif option == "solarized"
    if !empty(glob(plugged_directory.'/vim-colors-solarized/colors/solarized.vim'))
        set background=dark
        let g:solarized_termcolors=256
        color solarized
    endif
elseif option == "gruvbox"
    if !empty(glob(plugged_directory.'/gruvbox/colors/gruvbox.vim'))
        color gruvbox
    endif
endif

