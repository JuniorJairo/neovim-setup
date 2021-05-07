" this will install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

" Plugins
call plug#begin()
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'roxma/nvim-completion-manager'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'voldikss/vim-floaterm'
call plug#end()

" Setting theme
colorscheme gruvbox

" General confs
nnoremap <c-p> :Files<cr>
nnoremap <c-d> :vsplit<cr>
nnoremap <c-o> :vsplit ~/.config/nvim/init.vim<cr>
set hidden
set number
set mouse=a
nnoremap <Leader>vr :source ~/.config/nvim/init.vim<CR>

" Nerdtree Confs
nnoremap <leader>n :NERDTreeFocus<cr>
nnoremap <C-t> :NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeFind<cr>
