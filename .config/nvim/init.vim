"""PLUGINS """
call plug#begin()
Plug 'sheerun/vim-polyglot'                "Better syntax highlighting
Plug 'itchyny/lightline.vim'                "Powerline (lighter version)
Plug 'airblade/vim-gitgutter'               "Git additions and removals
Plug 'tpope/vim-fugitive'                   "Git wrapper for vim
" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Javascript/Typescript
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs', { 'for': 'js', 'do': 'npm install -g tern' }
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'       "Vim-Tmux navigation
Plug '/usr/local/opt/fzf'                   "Fuzzy finder
Plug 'junegunn/fzf.vim'                     "fzf vim funcs
call plug#end()

set clipboard=unnamed                   "System register to be same as unnamed
set autowrite                           "write content itself ex. build
set undofile
set wildignore=*.git                    "Wild menu to ignore compiled files
set backspace=2                         "Backspace deletes 2 spaces
set tabstop=2                           "Existing tabs to be shown with 2 spaces
set shiftwidth=2                        "Size of indent with window shifts
set expandtab                           "Tabs to spaces

"""VISUAL"""
"Settings
set showmatch                           "Matching braces/brackets
set number                              "Show absolute number on current line
set relativenumber                      "Relative numbering
set scrolloff=5                         "Always 5 lines before or after cusor
set cursorline                          "highlight current line slightly
set nohlsearch                          "Don't continue to highlight searched phrases.

colorscheme base16-solarized-dark

if has ("termguicolors")
  set termguicolors
endif

"Deoplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

" For loops
	" Python
		inoremap <leader>range <esc>Ifor i in range(<esc>A):<enter><tab>

"FZF
nnoremap <C-t> :FZF<CR>
