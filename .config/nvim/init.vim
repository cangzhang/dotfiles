" this will install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin()

Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'ghifarit53/tokyonight-vim'

Plug 'elixir-editors/vim-elixir'

Plug 'dense-analysis/ale'

" Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}

Plug 'slashmili/alchemist.vim'

call plug#end()

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

syntax on
filetype plugin indent on

let g:ale_fixers = { 'elixir': ['mix_format'] }

:set nu
