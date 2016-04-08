# spacemacs.vim

Spacemacs keybindings and settings ported to Vim. 
Also see the [plugins](#plugin-dependencies) which make Vim feel even more like Spacemacs.


# Installation 

Using Vundle:
```
Plugin 'sthysel/vim-spacemacs'
```

Using Plug:
```
Plug 'sthysel/vim-spacemacs'
```

# Leader Key
By default this plugin uses whatever leader key you have set up.  
If you like *space*macs and you aren't already using `<SPACE>` as your leader key, then you can set it in your `init.vim` using the following:
```
let mapleader = "\<SPACE>"
```
or 
```
let mapleader = " "
```

# Plugin dependencies

```
" Unite
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make'}
Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'Shougo/unite-session'
Plug 'scrooloose/syntastic'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'szw/vim-maximizer'

"git layer
Plug 'tpope/vim-fugitive'

"version-control layer
Plug 'airblade/vim-gitgutter'
```

# Notes
Originally based on https://github.com/jimmay5469/vim-spacemacs
