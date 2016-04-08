# spacemacs.vim #

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
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'szw/vim-maximizer'

"git layer
Plug 'tpope/vim-fugitive'

"javascript layer
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'

"version-control layer
Plugin 'airblade/vim-gitgutter'
```

# Notes
Based on https://github.com/jimmay5469/vim-spacemacs
