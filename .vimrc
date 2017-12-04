"-------------------------------------------------------------------------------------------
" VIM settings
filetype on
filetype plugin on

" Use Vim defaults (much better!)

set nocompatible

" keep no backup file

set nobackup

" allow backspacing over everything in insert mode

set backspace=2

" always set autoindenting on

set autoindent


set smartindent


set ruler


set shiftwidth=2

set number

set tabstop=2

" always limit the width of text to 1000

set textwidth=1000

" Turn off sound when hitting last line or typing erroneously

set visualbell

set nowrap

" Switch on search pattern highlighting.

set hlsearch

"execute pathogen#infect()

" Show the foldcolumn
set foldcolumn=1

" Enable mouse in vim
set mouse=a

"-------------------------------------------------------------------------------------------
" Ctags setting 

set tags=./tags,tags
set tags+=~/Desktop/Double-MAC/tags

"-------------------------------------------------------------------------------------------
" Cscope setting 
set csprg=/usr/local/bin/cscope
set csto=0
set cst
set nocsverb
if filereadable("./cscope.out")
    cs add ./cscope.out
elseif filereadable("../cscope.out")
    cs add ../cscope.out
elseif filereadable("../../cscope.out")
    cs add ../../cscope.out
elseif filereadable("../../../cscope.out")
    cs add ../../../cscope.out
elseif filereadable("../../../../cscope.out")
    cs add ../../../../cscope.out
else
    cs add /usr/src/linux/cscope.out
endif
set csverb

"-------------------------------------------------------------------------------------------
" Taglist, Nerd, Trinity settings

map <F2> :TlistToggle<CR>
map <F4> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>
let NERDTreeWinPos = "right"
map <F5> :TrinityToggleAll<CR>

"-------------------------------------------------------------------------------------------
"Nerd Commenter

let NERDSpaceDelims=1

"-------------------------------------------------------------------------------------------
" Source Explorer settings
" F8 Key = SrcExpl Toggling
nmap <C-H> <C-W>h                            
"왼쪽 창으로 이동
nmap <C-J> <C-W>j                              
"하단(preview) 창으로 이동
nmap <C-K> <C-W>k                             
"상단 창으로 이동
nmap <C-L> <C-W>l                              
"오른쪽 창으로 이동

" // The switch of the Source Explorer                                         " 
nmap <F3> :SrcExplToggle<CR> 
"                                                                              " 
" // Set the height of Source Explorer window                                  " 
let g:SrcExpl_winHeight = 8 
"                                                                              " 
" // Set 100 ms for refreshing the Source Explorer                             " 
let g:SrcExpl_refreshTime = 500 
"                                                                              " 
" // Set "Enter" key to jump into the exact definition context                 " 
let g:SrcExpl_jumpKey = "<ENTER>" 
"                                                                              " 
" // Set "Space" key for back from the definition context                      " 
let g:SrcExpl_gobackKey = "<SPACE>" 
"                                                                              " 
" // In order to avoid conflicts, the Source Explorer should know what plugins " 
" // except itself are using buffers. And you need add their buffer names into " 
" // below listaccording to the command ":buffers!"                            " 
let g:SrcExpl_pluginList = [ 
         \ "__Tag_List__", 
         \ "_NERD_tree_", 
         \ "Source_Explorer" 
     \ ] 
                                                                              
" // Enable/Disable the local definition searching, and note that this is not  " 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. " 
" // It only searches for a match with the keyword according to command 'gd'   " 
let g:SrcExpl_searchLocalDef = 0
"                                                                              " 
" // Do not let the Source Explorer update the tags file when opening          " 
let g:SrcExpl_isUpdateTags = 0
"                                                                              " 
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to " 
" //  create/update a tags file                                                " 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 
"                                                                              " 
" // Set "<F8>" key for updating the tags file artificially                   " 
let g:SrcExpl_updateTagsKey = "<F8>" 
"                                                                              " 
" // Set "<F6>" key for displaying the previous definition in the jump list    " 
let g:SrcExpl_prevDefKey = "<F6>" 
"                                                                              " 
" // Set "<F7>" key for displaying the next definition in the jump list        " 
let g:SrcExpl_nextDefKey = "<F7>" 

"-------------------------------------------------------------------------------------------
" AutoCompletePop settings 
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col-1]!~'\k'
		return "\<TAB>"
	else
		if pumvisible()
			return "\<C-N>"
		else
			return "\<C-N>\<C-P>"
		end
	endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

hi Pmenu ctermbg=blue
hi PmenuSel ctermbg=yellow ctermfg=black
hi PmenuSbar ctermbg=blue

"-------------------------------------------------------------------------------------------
" Solarized theme setting 

"if has('gui_running')
"	set background=light
"else
"	set background=dark
"endif

syntax enable
"set background=dark
"colorscheme solarized

syntax on
filetype plugin indent on

"-------------------------------------------------------------------------------------------
" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP' 

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux


"-------------------------------------------------------------------------------------------
"" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
"-------------------------------------------------------------------------------------------
"" delimitMate
let delimitMate_expand_cr=1
"-------------------------------------------------------------------------------------------
"" vim-multiple-cursor
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
"-------------------------------------------------------------------------------------------
"" vim-smooth-scroll
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 3)<CR>
"-------------------------------------------------------------------------------------------
" vim-g

let g:vim_g_command = "G"
let g:vim_g_f_command = "Gf"

"-------------------------------------------------------------------------------------------
" Vundle settings
			
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Navigating directories
Plugin 'The-NERD-Tree'
" Auto completion in c, c++
Plugin 'AutoComplPop'
" Function navigator
Plugin 'taglist.vim'
" Plugin SrcExpl
" https://github.com/vim-scripts/SrcExpl.git 
" Plugin trinity
" https://github.com/vim-scripts/Trinity.GitHub
" Great commenting tool, \cs: sexy comment, \c-space: toggle, \cm: minimum comment
Plugin 'The-NERD-Commenter'
" Make vim work with python, \d: definition, \g: assignment, \n: usage, ...
Plugin 'davidhalter/jedi-vim'
" Fancy status bar
Plugin 'vim-airline/vim-airline'
" git add/remove monitoring
Plugin 'airblade/vim-gitgutter'
" syntax check at :w!
Plugin 'scrooloose/syntastic'
" <C-p> file search <C-f>, <C-b> -> cycle between modes, <C-d> to switch to filename only search, ...
Plugin 'ctrlpvim/ctrlp.vim'
" coffee-scirpt grammar
Plugin 'kchmck/vim-coffee-script'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

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

"-------------------------------------------------------------------------------------------
