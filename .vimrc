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
" Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Navigating directories
Plugin 'The-NERD-Tree'
" Auto completion in c, c++
" Plugin 'AutoComplPop'
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
" <C-p> file search <C-f>, <C-b> -> cycle between modes, <C-d> to switch to filename only search, ...
Plugin 'ctrlpvim/ctrlp.vim'
" coffee-scirpt grammar
Plugin 'kchmck/vim-coffee-script'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Install YCM only in high performance desktop
Plugin 'Valloric/YouCompleteMe'
Plugin 'nanotech/jellybeans.vim'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
" syntax check at :w!
" Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'

Plugin 'Lokaltog/vim-easymotion'
"cursor move in one screen
" <leader> <leader> w
" <leader> <leader> ge
" <leader> <leader> s

Plugin 'textobj-user'
Plugin 'mattn/vim-textobj-url'
Plugin 'textobj-entire'
Plugin 'textobj-line'
Plugin 'vim-indent-object'

Plugin 'Quich-Filter'
" line filtering

Plugin 'rking/ag.vim'
"find string

Plugin 'pangloss/vim-simplefold'
" folding codes

Plugin 'godlygeek/tabular'
" line alignment

Plugin 'sgur/ctrlp-extensions.vim'
" add cmdline to ctrlp

Plugin 'vim-scripts/DrawIt'
" draw lines with ascii
" :read !figlet example

Plugin 'bad-whitespace'
" You can erase the bad whitespace with the command |EraseBadWhitespace|
" You can manually toggle the highlighting for the current buffer with the
" commands |ShowBadWhitespace| |HideBadWhitespace| |ToggleBadWhitespace|
"
Plugin 'vim-scripts/WhiteWash'
Plugin 'chrisbra/unicode.vim'

Plugin 'haya14busa/incsearch.vim'
" highlight when searching

Plugin 'haya14busa/incsearch-easymotion.vim'

Plugin 'haya14busa/incsearch-fuzzy.vim'

Plugin 'justinmk/vim-sneak'




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
" set mouse=a

set encoding=utf-8


"-------------------------------------------------------------------------------------------
" Buffer setting
" 이 옵션은 버퍼를 수정한 직후 버퍼를 감춰지도록 한다.
" 이 방법으로 버퍼를 사용하려면 거의 필수다.
set hidden

" 버퍼 새로 열기
" 원래 이 단축키로 바인딩해 두었던 :tabnew를 대체한다.
nmap <leader>T :enew<cr>

" 다음 버퍼로 이동
nmap <leader>l :bnext<CR>

" 이전 버퍼로 이동
nmap <leader>h :bprevious<CR>

" 현재 버퍼를 닫고 이전 버퍼로 이동
" 탭 닫기 단축키를 대체한다.
nmap <leader>bq :bp <BAR> bd #<CR>

" 모든 버퍼와 각 버퍼 상태 출력
nmap <leader>bl :ls<CR>
"-------------------------------------------------------------------------------------------
" Ctags setting

set tags=./tags,tags
set tags+=/mnt/HDD1/joonki/drone_swarm/ns-allinone-3.28
" set tags+=/mnt/HDD1/joonki/drone_swarm/v2v

"-------------------------------------------------------------------------------------------
" Cscope setting
if has("macunix")
	set csprg=/usr/local/bin/cscope
else
	set csprg=/usr/bin/cscope
endif
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

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

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
" function! InsertTabWrapper()
	" let col = col('.') - 1
	" if !col || getline('.')[col-1]!~'\k'
		" return "\<TAB>"
	" else
		" if pumvisible()
			" return "\<C-N>"
		" else
			" return "\<C-N>\<C-P>"
		" end
	" endif
" endfunction

" inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" hi Pmenu ctermbg=blue
" hi PmenuSel ctermbg=yellow ctermfg=black
" hi PmenuSbar ctermbg=blue

"-------------------------------------------------------------------------------------------
" Theme setting

syntax enable
syntax on
filetype plugin indent on

if has('gui_running')
	set background=light
else
	set background=dark
endif

" set cursorcolumn
set cursorline

map <F7> :set cursorcolumn!<CR>
map <F8> :set cursorline!<CR>

set t_Co=256
colorscheme smyck
" colorscheme molokai

if has("autocmd")
	if v:version > 701
		autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
		autocmd Syntax * call matchadd('Question', '\W\zs\(HELP\|DEBUG\)')
		autocmd Syntax * call matchadd('ErrorMsg', '\W\zs\(ERROR\|FATAL\)')
	endif
endif
"TODO: Add more highlighting ...
"-------------------------------------------------------------------------------------------
" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'

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
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 2, 10)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 2, 10)<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 2, 5)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 2, 5)<CR>
"-------------------------------------------------------------------------------------------
" vim-g

let g:vim_g_command = "G"
let g:vim_g_f_command = "Gf"

"-------------------------------------------------------------------------------------------
" YouCompleteMe

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
" To avoid conflict snippets
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = '/usr/local/bin/python2.7'

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>

"-------------------------------------------------------------------------------------------
"syntastic

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" silent! nmap <F9> :SyntasticToggleMode<CR> \| :ALEToggle<CR>
" let g:syntastic_mode_map = {
    " \ "mode": "passive",
    " \ "active_filetypes": [],
    " \ "passive_filetypes": [] }

"-------------------------------------------------------------------------------------------
"ALE
silent! nmap <F9> :ALEToggle<CR>
" Write this in your vimrc file
let g:ale_enabled = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_keep_list_window_open = 0

"-------------------------------------------------------------------------------------------
" vim-airline
" 버퍼 목록 켜기
let g:airline#extensions#tabline#enabled = 1

" 파일명만 출력
let g:airline#extensions#tabline#fnamemod = ':t'
"-------------------------------------------------------------------------------------------
" QUICH-FILTER
nnoremap ,fi :call FilteringNew().addToParameter('alt', @/).run()
nnoremap ,g :call FilteringGetForSource().return()

"-------------------------------------------------------------------------------------------
" AG
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    let g:ctrlp_use_caching = 0
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['', '', ''],
    \ }
endif


"-------------------------------------------------------------------------------------------
" vim-simplefold
let g:SimpylFold_docstring_preview=1

"-------------------------------------------------------------------------------------------
" TABULAR
inoremap     :call align()a
function! s:align()
let p = '^\s*|\s.*\s|\s*$'
if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
endif
endfunction

"-------------------------------------------------------------------------------------------
" ctrlp extension
let g:ctrlp_yankring_disable = 1

"-------------------------------------------------------------------------------------------
" INCSEARCH

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

map zx/ <Plug>(incsearch-fuzzy-/)
map zx? <Plug>(incsearch-fuzzy-?)
map zxg/ <Plug>(incsearch-fuzzy-stay)
