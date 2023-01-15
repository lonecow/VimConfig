if has("win32") || has("win16")
   filetype off
   set shellslash
   set rtp+=~/.vim/plugin/Vundle.vim
   call vundle#begin('~/.vim/plugin')
else
   " set the runtime path to include Vundle and initialize
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
endif
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'ervandew/supertab'
Plugin 'The-NERD-tree'
Plugin 'jwhitley/vim-matchit'
Plugin 'fholgado/minibufexpl.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

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
"Resets search highlighting"
:map <F10> :nohlsearch<CR>
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

set listchars=eol:¬,tab:→→,trail:~,extends:>,precedes:<,space:·
