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
Plugin 'tpope/vim-fugitive'
" plugin on GitHub repo
Plugin 'L9'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'git://git.wincent.com/command-t.git'
" Fast file navigation for vim
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'The-NERD-Tree'
" Navigating directories
" Plugin 'AutoComplPop'
" Auto completion in c, c++
Plugin 'taglist.vim'
" Function navigator
" Plugin SrcExpl
" https://github.com/vim-scripts/SrcExpl.git
" Plugin trinity
" https://github.com/vim-scripts/Trinity.GitHub
Plugin 'The-NERD-Commenter'
" Great commenting tool, \cs: sexy comment, \c-space: toggle, \cm: minimum comment
" Plugin 'davidhalter/jedi-vim'
" Make vim work with python, \d: definition, \g: assignment, \n: usage, ...
Plugin 'vim-airline/vim-airline'
" Fancy status bar
Plugin 'airblade/vim-gitgutter'
" git add/remove monitoring
Plugin 'ctrlpvim/ctrlp.vim'
" <C-p> file search <C-f>, <C-b> -> cycle between modes, <C-d> to switch to filename only search, ...
Plugin 'kchmck/vim-coffee-script'
" coffee-scirpt grammar
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Raimondi/delimitMate'
" Auto [], {}
Plugin 'SirVer/ultisnips'
" autocomplete code, e.g., switch, ...
Plugin 'honza/vim-snippets'
" code autocomplete library
Plugin 'Valloric/YouCompleteMe'
" Install YCM only in high performance desktop
Plugin 'nanotech/jellybeans.vim'
Plugin 'severin-lemaignan/vim-minimap'
" <leader> mm : open
" <leader> mc : close
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
" cs, ds, yss, ysiw
" Plugin 'scrooloose/syntastic'
" syntax check at :w!
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
" ,f
" ,g
Plugin 'rking/ag.vim'
"find string
":Ag
Plugin 'pangloss/vim-simplefold'
" folding codes
" zf, zo, zO, zc, zC, zR, zM, zE, zd
Plugin 'godlygeek/tabular'
" line alignment
" :Tab /|
Plugin 'sgur/ctrlp-extensions.vim'
" add cmdline to ctrlp
Plugin 'vim-scripts/DrawIt'
" draw lines with ascii, \di to start and \ds to end
" :read !figlet example
Plugin 'bad-whitespace'
" You can erase the bad whitespace with the command |EraseBadWhitespace|
" You can manually toggle the highlighting for the current buffer with the
" commands |ShowBadWhitespace| |HideBadWhitespace| |ToggleBadWhitespace|
Plugin 'vim-scripts/WhiteWash'
Plugin 'chrisbra/unicode.vim'
Plugin 'haya14busa/incsearch.vim'
" highlight when searching
Plugin 'haya14busa/incsearch-easymotion.vim'
"zx/
Plugin 'haya14busa/incsearch-fuzzy.vim'
"z/
Plugin 'justinmk/vim-sneak'
" s or S or ;
Plugin 't9md/vim-textmanip'
" A-h,j,k,l
Plugin 'majutsushi/tagbar'
" F2
Plugin 'tpope/vim-repeat'
Plugin 'morhetz/gruvbox'
Plugin 'MultipleSearch'
" ,h to add search
" ,H reset
Plugin 'VisIncr'
" ctrl-v to be virtual block mode
" :I to increase the number
Plugin 'visSum.vim'
" virtual mode <leader> su
Plugin 'tpope/vim-abolish'
" snake_case --> crs
" mixed case --> crm
" UPPER_CASE --> cru
" dash case  --> cr-
" dot.case   --> cr.
" space case --> cr<spc>
" Title case --> crt
Plugin 'LeafCage/yankround.vim'
" <F5>
Plugin 'vim-jp/vital.vim'
" Plugin 'mhinz/vim-signify'
" mark updated, added, ... lines, git
Plugin 'plasticboy/vim-markdown'
Plugin 'peterrincker/vim-argumentative'
" <, >, [, ],
Plugin 'foosoft/vim-argwrap'
" ,l argument horizontal, vertical align
Plugin 'sjl/gundo.vim'
" open undo history
Plugin 'will133/vim-dirdiff'
" :DirDiff
Plugin 'blueyed/vim-diminactive'

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
" :nmap <F1> :echo<CR>

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

" map <F6> :TlistToggle<CR>
map <F4> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>
let NERDTreeWinPos = "right"
" map <F5> :TrinityToggleAll<CR>

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

" map <F7> :set cursorcolumn!<CR>
map <F8> :set cursorline!<CR>

set t_Co=256
colorscheme smyck
" colorscheme molokai
" colorscheme gruvbox

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
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 2, 10)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 2, 10)<CR>
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 2, 5)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 2, 5)<CR>
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
let g:ycm_python_binary_path = '/home/joonki/Tensorflow/bin/python2.7'

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>tt :YcmCompleter GetTypeImprecise<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>
nnoremap <leader>n :YcmCompleter GoToReferences<CR>
nnoremap <leader>k :YcmCompleter GetDoc<CR>

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
nmap <F7> :ALEToggle<CR>
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
nnoremap ,f :call FilteringNew().addToParameter('alt', @/).run()<CR>
nnoremap ,g :call FilteringGetForSource().return()<CR>

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
let g:SimpylFold_docstring_preview = 1

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

map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

map zx/ <Plug>(incsearch-easymotion-/)
map zx? <Plug>(incsearch-easymotion-?)
map zxg/ <Plug>(incsearch-easymotion-stay)
"-------------------------------------------------------------------------------------------
" textmanip
xmap <Space>d <Plug>(textmanip-duplicate-down)
nmap <Space>d <Plug>(textmanip-duplicate-down)
xmap <Space>D <Plug>(textmanip-duplicate-up)
nmap <Space>D <Plug>(textmanip-duplicate-up)

xmap ∆ <Plug>(textmanip-move-down)
xmap ˚ <Plug>(textmanip-move-up)
xmap ˙ <Plug>(textmanip-move-left)
xmap ¬ <Plug>(textmanip-move-right)

" toggle insert/replace with <F10>
" nmap <F10> <Plug>(textmanip-toggle-mode)
" xmap <F10> <Plug>(textmanip-toggle-mode)
"-------------------------------------------------------------------------------------------
" Tagbar
nmap <F2> :TagbarToggle<CR>
let g:tagbar_left=1

"-------------------------------------------------------------------------------------------
" Indent guide
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238
nmap <F1> :IndentGuidesToggle<CR>

"-------------------------------------------------------------------------------------------
" MultipleSearch

let g:MultipleSearchMaxColors=11
let g:MultipleSearchColorSequence="darkcyan,gray,LightCyan,LightBlue,LightGreen,blue,green,magenta,cyan,gray,brown"
let g:MultipleSearchTextColorSequence="white,DarkRed,black,black,black,white,black,white,red,black,white"
nnoremap  ,H :SearchReset<CR>
nnoremap  ,h :SearchBuffers 

"-------------------------------------------------------------------------------------------
" Yankround
let g:yankround_max_history = 50
nmap <F5> :CtrlPYankRound<CR>

"-------------------------------------------------------------------------------------------
" vim-argwrap
nnoremap ,l :ArgWrap<CR>

"-------------------------------------------------------------------------------------------
" diminactive
let g:diminactive_enable_focus = 1
:hi ColorColumn ctermbg=235 guibg=#eee8d5

"-------------------------------------------------------------------------------------------
" Gundo
let g:gundo_prefer_python3 = 1
nmap <F6> :GundoToggle<CR>
