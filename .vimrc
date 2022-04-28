syntax on
set relativenumber number

call plug#begin('~/.vim/plugged')

Plug 'tribela/vim-transparent'
Plug 'bfrg/vim-cpp-modern'
Plug 'ErichDonGubler/vim-sublime-monokai'

call plug#end()

if &term =~ '256color'
    set t_ut=
endif
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
hi StatusLine ctermbg=Green ctermfg=Red
hi StatusLineNC guibg=#ffff00
hi StatusLineTerm ctermbg=Red ctermfg=Green
hi StatusLineTermNC ctermbg=Black ctermfg=Green
colorscheme sublimemonokai

""" Auto Center when entering Insert Mode
autocmd InsertEnter * norm zz

""" Auto Remove Trailing White Space
autocmd BufWritePre * %s/\s\+$//e

set wildmode=longest,list,full

""" Setting Tab Behavior
set shiftwidth=4
set softtabstop=4
set tabstop=4

" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap < <><left>
" inoremap > <><left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q!
cnoreabbrev Qall qall

""" Scroll down/up
    noremap <C-J>  <C-E>
    noremap <C-K>  <C-Y>
