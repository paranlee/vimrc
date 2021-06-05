set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin onPlugin 'majutsushi/tagbar'Plugin 'majutsushi/tagbar'
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
call vundle#begin()

Plugin 'ludovicchabant/vim-gutentags'
Plugin 'ronakg/quickr-cscope.vim'
Plugin 'liuchengxu/vista.vim'
Plugin 'preservim/nerdtree'
Plugin 'zivyangll/git-blame.vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'iberianpig/tig-explorer.vim'
Plugin 'terryma/vim-smooth-scroll'

Plugin 'lfv89/vim-interestingwords'
Plugin 'itchyny/vim-cursorword'

Plugin 'dominikduda/vim_current_word'

Plugin 'tomasiser/vim-code-dark'
Plugin 'frazrepo/vim-rainbow'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

set tagbsearch

"" vim-gutentags
let g:gutentags_project_root = ['.tag_root']
let g:gutentags_project_info = []

" cscope setting
function! LoadCscope()
	let db = findfile("cscope.out", ".;")
	if (!empty(db))
		let path = strpart(db, 0, match(db, "/cscope.out$"))
		set nocscopeverbose " suppress 'duplicate connection' error
		exe "cs add " . db . " " . path
		set cscopeverbose
	" else add the database pointed to by environment variable 
	elseif $CSCOPE_DB != "" 
		cs add $CSCOPE_DB
	endif
endfunction

au BufEnter /* call LoadCscope()

" Vista setting
function! NearestMethodOrFunction() abort
return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
" If you want to show the nearest function in your statusline automatically
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
au VimEnter * Vista

set cursorline 
set cursorcolumn 
set number

let g:indent_guides_enable_on_vim_startup = 1

colorscheme codedark
au FileType c,cpp,objc,objcpp call rainbow#load()

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
au VimEnter * NERDTree

" vim-smooth-scroll
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 3)<CR>

highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
