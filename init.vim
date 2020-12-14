"Call :PlugInstall to install plugin
call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'OmniSharp/omnisharp-vim'
Plug 'prabirshrestha/asyncomplete.vim', { 'for' : 'cs' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:nord_bold_vertical_split_line = 1
let g:nord_cursor_line_number_background = 1
colorscheme nord
set cursorline

"locale setting
set encoding=utf-8

"show line number
set number

"tell vim to not wait for second key: time out on mapping after 0.1 second, time out on key codes after 0.1 second
set timeout timeoutlen=100 ttimeoutlen=100


"set space for tab
set expandtab

"set tab to 4 spaces
set ts=4 sw=4

"for omnisharp auto complete list
inoremap <C-j> <Down>
inoremap <C-k> <Up>

"for jumping between windows
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

"for resizing windows
nnoremap <S-h> <C-w><
nnoremap <S-l> <C-w>>
nnoremap <S-k> <C-w>+
nnoremap <S-j> <C-w>-

"for nvim terminal emulator
if has('nvim')
	tnoremap <Esc> <C-\><C-n>
	tnoremap <C-q> <Esc>
	nnoremap t :belowright split:let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>
endif

"for NerdTree
"avoid crashes when calling vim-plug functions while the cursor is in nerdtree
let g:plug_window = 'noautocmd vertical topleft new'
nnoremap <C-n> :NERDTreeToggle<CR>

"airline
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

