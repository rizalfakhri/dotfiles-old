set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

" Editing Override
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

" Basic Override
set incsearch
set number
set nowrap
set fillchars+=vert:\│
syntax on
:imap jj <Esc>


" Goyo Override
map <leader>zzz :Goyo<cr>

" NERDTree Plugin
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<cr>

" Buffer Keymapping
map <leader>t :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>q :bw<cr>
map <leader>tm :tabmove 

" Opens a new tab with the current buffer's path
" " Super useful when editing files in the same directory
map <leader>e :tabedit <c-r>=expand("%:p:h")<cr>/"

" CTRLP Plugin
let g:ctrlp_map = '<C-p>'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" TAB NAVIGATION
nnoremap H gT
nnoremap L gt

" JAVASCRIPT HIGHLIGHTING
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

execute pathogen#infect()

" Color Scheme
colorscheme dracula
