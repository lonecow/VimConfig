execute pathogen#infect()

" adjust configuration for such hostile environment as Windows {{{
if has("win32") || has("win16")
" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('/Program\ Files\ \(x86\)/Vim/vim74/plugin')
call vundle#begin('~/vimfiles/bundle')
else
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('/Program\ Files\ \(x86\)/Vim/vim74/plugin')
endif
" }}}


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" {{{ Plugins
" --- Plugins from github
Bundle "ervandew/supertab"
Bundle "The-NERD-tree"
Bundle "jwhitley/vim-matchit"
Bundle "minibufexplorerpp"
if !(has("win32") || has("win16"))
Bundle "Valloric/YouCompleteMe"
endif
" }}}

let NERDChristmasTree = 1

"my default color scheme"
colorscheme desert

"MiniBuffExplorer parameters"
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"my default font"
set guifont=Courier_New:h11:b:cANSI

"add automatic syntax highlighting"
syntax on

"adds line numbers"
set number

"highlights all matches of the given search"
set hlsearch

"turn off swap files
set noswapfile

"Key maps"
:map <F2> :YcmCompleter GotoDefinition<CR>
:map <F6> :FixWhitespace<CR>
:map <F9> :NERDTreeToggle<CR>
nnoremap <silent> <F4> :Rfindstring<CR>

"sets the tabs to be 3 spaces"
set tabstop=3
set shiftwidth=3
"converts all tabs to spaces"
set expandtab

"adds spelling mistake underlining"
set spell

"fix silly backspace setting"
set backspace+=start,eol,indent

"add arxml auto
au BufNewFile,BufRead *.arxml setf xml

