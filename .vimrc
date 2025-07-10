"========================================================================================================
" VIM CONFIGURATION
"========================================================================================================

"--------------------------------------------------------------------------------------------------------
" GENERAL VIM SETTINGS
"--------------------------------------------------------------------------------------------------------
set nocompatible              " Use Vim defaults (much better!)
filetype on
filetype plugin on
filetype plugin indent on     " Enable file type detection and plugins

" Basic settings
set nobackup                  " Keep no backup file
set hidden                    " Hide buffers instead of closing them
set backspace=2               " Allow backspacing over everything in insert mode
set autoindent                " Always set autoindenting on
set smartindent
set ruler                     " Show cursor position
set shiftwidth=2
set tabstop=2
set textwidth=1000            " Always limit the width of text to 1000
set number                    " Show line numbers
set visualbell                " Turn off sound when hitting last line or typing erroneously
set nowrap                    " Don't wrap lines
set hlsearch                  " Switch on search pattern highlighting
set foldcolumn=1              " Show the foldcolumn
set encoding=utf-8
" set mouse=a                 " Enable mouse in vim

" Tags
set tags=./tags,tags

"========================================================================================================
" VUNDLE PLUGIN MANAGER
"========================================================================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Core plugins
Plugin 'gmarik/Vundle.vim'                     " Let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'                    " Git integration
Plugin 'L9'                                    " Utility functions library

" File navigation and search
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}    " Fast file navigation for vim
Plugin 'The-NERD-Tree'                         " File explorer
Plugin 'ctrlpvim/ctrlp.vim'                    " Fuzzy file finder
Plugin 'sgur/ctrlp-extensions.vim'             " CtrlP extensions
Plugin 'rking/ag.vim'                          " The silver searcher integration

" Code navigation and tags
Plugin 'taglist.vim'                           " Function navigator
Plugin 'majutsushi/tagbar'                     " Display tags in a window

" Editing enhancements
Plugin 'The-NERD-Commenter'                    " Commenting tool
Plugin 'terryma/vim-multiple-cursors'          " Multiple cursor support
Plugin 'Raimondi/delimitMate'                  " Auto-closing brackets
Plugin 'tpope/vim-surround'                    " Surround text objects
Plugin 'tpope/vim-repeat'                      " Enable repeating supported plugin maps
Plugin 'tpope/vim-abolish'                     " Case coercion and substitution
Plugin 't9md/vim-textmanip'                    " Text manipulation
Plugin 'peterrincker/vim-argumentative'        " Text object for function arguments
Plugin 'foosoft/vim-argwrap'                   " Wrap and unwrap function arguments

" Snippets and completion
Plugin 'SirVer/ultisnips'                      " Snippet engine
Plugin 'honza/vim-snippets'                    " Snippet collection
Plugin 'davidhalter/jedi-vim'                  " Python autocompletion

" Syntax and linting
Plugin 'scrooloose/syntastic'                  " Syntax checking
Plugin 'w0rp/ale'                              " Asynchronous lint engine
Plugin 'kchmck/vim-coffee-script'              " CoffeeScript syntax
Plugin 'plasticboy/vim-markdown'               " Markdown syntax

" UI enhancements
Plugin 'vim-airline/vim-airline'               " Status bar
Plugin 'airblade/vim-gitgutter'                " Git diff in the gutter
Plugin 'severin-lemaignan/vim-minimap'         " Code minimap
Plugin 'nathanaelkane/vim-indent-guides'       " Visual indent guides
Plugin 'blueyed/vim-diminactive'               " Dim inactive windows

" Theme and colors
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'

" Movement and search
Plugin 'Lokaltog/vim-easymotion'               " Fast cursor movement
Plugin 'justinmk/vim-sneak'                    " Two-character search motion
Plugin 'haya14busa/incsearch.vim'              " Improved incremental search
Plugin 'haya14busa/incsearch-easymotion.vim'   " Incsearch + easymotion
Plugin 'haya14busa/incsearch-fuzzy.vim'        " Fuzzy incremental search
Plugin 'MultipleSearch'                        " Highlight multiple search patterns

" Text objects
Plugin 'textobj-user'                          " Create custom text objects
Plugin 'mattn/vim-textobj-url'                 " URL text object
Plugin 'textobj-entire'                        " Entire buffer text object
Plugin 'textobj-line'                          " Line text object
Plugin 'vim-indent-object'                     " Indent-based text object

" Utilities
Plugin 'Quich-Filter'                          " Line filtering
Plugin 'pangloss/vim-simplefold'               " Code folding
Plugin 'godlygeek/tabular'                     " Text alignment
Plugin 'vim-scripts/DrawIt'                    " ASCII drawing
Plugin 'bad-whitespace'                        " Whitespace highlighting
Plugin 'vim-scripts/WhiteWash'                 " Remove trailing whitespace
Plugin 'chrisbra/unicode.vim'                  " Unicode character insertion
Plugin 'LeafCage/yankround.vim'                " Yank history
Plugin 'vim-jp/vital.vim'                      " Vim library
Plugin 'sjl/gundo.vim'                         " Undo tree visualization
Plugin 'will133/vim-dirdiff'                   " Directory diff
Plugin 'VisIncr'                               " Generate increasing sequences
Plugin 'visSum.vim'                            " Sum numbers in visual selection

call vundle#end()

"========================================================================================================
" THEME AND VISUAL SETTINGS
"========================================================================================================
syntax enable
syntax on

if has('gui_running')
	set background=light
else
	set background=dark
endif

set t_Co=256
colorscheme smyck
" colorscheme molokai
" colorscheme gruvbox

" Cursor line settings
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
autocmd VimEnter,Colorscheme * :hi CursorLine ctermbg=237 "guibg=237

" Custom highlighting for keywords
if has("autocmd")
	if v:version > 701
		autocmd Syntax * call matchadd('WildMenu', '\W\zs\(NOTE\|INFO\|IDEA\)')
		autocmd Syntax * call matchadd('DiffAdd', '\W\zs\(HELP\|DEBUG\)')
		autocmd Syntax * call matchadd('ErrorMsg', '\W\zs\(ERROR\|FATAL\)')
	endif
endif

"========================================================================================================
" KEY MAPPINGS - GENERAL
"========================================================================================================

" Buffer navigation
nmap <leader>T :enew<cr>                       " Create new buffer
nmap <leader>l :bnext<CR>                      " Move to next buffer
nmap <leader>h :bprevious<CR>                  " Move to previous buffer
nmap <leader>bq :bp <BAR> bd #<CR>             " Close current buffer and move to previous one
nmap <leader>bl :ls<CR>                        " List all buffers

" Window navigation
nmap <C-H> <C-W>h                              " Move to left window
nmap <C-J> <C-W>j                              " Move to bottom window
nmap <C-K> <C-W>k                              " Move to top window
nmap <C-L> <C-W>l                              " Move to right window

" Toggle features
map <F8> :set cursorline!<CR>                  " Toggle cursor line

"========================================================================================================
" PLUGIN CONFIGURATIONS
"========================================================================================================

"--------------------------------------------------------------------------------------------------------
" NERDTree
"--------------------------------------------------------------------------------------------------------
map <F4> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>
let NERDTreeWinPos = "right"

"--------------------------------------------------------------------------------------------------------
" NERD Commenter
"--------------------------------------------------------------------------------------------------------
let NERDSpaceDelims=1

"--------------------------------------------------------------------------------------------------------
" Source Explorer
"--------------------------------------------------------------------------------------------------------
nmap <F3> :SrcExplToggle<CR>
let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 500
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_pluginList = [
         \ "__Tag_List__",
         \ "_NERD_tree_",
         \ "Source_Explorer"
     \ ]
let g:SrcExpl_searchLocalDef = 0
let g:SrcExpl_isUpdateTags = 0
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
let g:SrcExpl_updateTagsKey = "<F8>"
let g:SrcExpl_prevDefKey = "<F6>"
let g:SrcExpl_nextDefKey = "<F7>"

"--------------------------------------------------------------------------------------------------------
" Trinity
"--------------------------------------------------------------------------------------------------------
map <F9> :TrinityToggleAll<CR>

"--------------------------------------------------------------------------------------------------------
" CtrlP
"--------------------------------------------------------------------------------------------------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_yankring_disable = 1

" Ag integration
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

"--------------------------------------------------------------------------------------------------------
" UltiSnips
"--------------------------------------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"

"--------------------------------------------------------------------------------------------------------
" delimitMate
"--------------------------------------------------------------------------------------------------------
let delimitMate_expand_cr=1

"--------------------------------------------------------------------------------------------------------
" vim-multiple-cursors
"--------------------------------------------------------------------------------------------------------
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"--------------------------------------------------------------------------------------------------------
" YouCompleteMe (Currently commented out)
"--------------------------------------------------------------------------------------------------------
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = 'python'

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDefinition<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>tt :YcmCompleter GetTypeImprecise<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>
nnoremap <leader>n :YcmCompleter GoToReferences<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>
nnoremap <leader>k :YcmCompleter GetDoc<CR>

"--------------------------------------------------------------------------------------------------------
" Syntastic (Currently commented out)
"--------------------------------------------------------------------------------------------------------
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

"--------------------------------------------------------------------------------------------------------
" ALE (Asynchronous Lint Engine)
"--------------------------------------------------------------------------------------------------------
nmap <F7> :ALEToggle<CR>
let g:ale_enabled = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['isort','yapf','autopep8', 'add_blank_lines_for_python_control_statements', 'black'],
\}

"--------------------------------------------------------------------------------------------------------
" vim-airline
"--------------------------------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"--------------------------------------------------------------------------------------------------------
" Quick Filter
"--------------------------------------------------------------------------------------------------------
nnoremap ,f :call FilteringNew().addToParameter('alt', @/).run()<CR>
nnoremap ,g :call FilteringGetForSource().return()<CR>

"--------------------------------------------------------------------------------------------------------
" vim-simplefold
"--------------------------------------------------------------------------------------------------------
let g:SimpylFold_docstring_preview=1

"--------------------------------------------------------------------------------------------------------
" Tabular
"--------------------------------------------------------------------------------------------------------
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

"--------------------------------------------------------------------------------------------------------
" Incsearch
"--------------------------------------------------------------------------------------------------------
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
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

"--------------------------------------------------------------------------------------------------------
" textmanip
"--------------------------------------------------------------------------------------------------------
xmap <Space>d <Plug>(textmanip-duplicate-down)
nmap <Space>d <Plug>(textmanip-duplicate-down)
xmap <Space>D <Plug>(textmanip-duplicate-up)
nmap <Space>D <Plug>(textmanip-duplicate-up)

xmap ∆ <Plug>(textmanip-move-down)
xmap ˚ <Plug>(textmanip-move-up)
xmap ˙ <Plug>(textmanip-move-left)
xmap ¬ <Plug>(textmanip-move-right)

"--------------------------------------------------------------------------------------------------------
" Tagbar
"--------------------------------------------------------------------------------------------------------
nmap <F2> :TagbarToggle<CR>
let g:tagbar_left=1

"--------------------------------------------------------------------------------------------------------
" Indent Guides
"--------------------------------------------------------------------------------------------------------
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238
nmap <F1> :IndentGuidesToggle<CR>

"--------------------------------------------------------------------------------------------------------
" MultipleSearch
"--------------------------------------------------------------------------------------------------------
let g:MultipleSearchMaxColors=11
let g:MultipleSearchColorSequence="green,LightGreen,LightBlue,LightCyan,lightred,lightyellow,magenta,cyan,brown,darkcyan,gray"
let g:MultipleSearchTextColorSequence="black,black,black,black,black,black,black,black,black,black,black"
nnoremap  ,H :SearchReset<CR>
nnoremap  ,h :SearchBuffers 

"--------------------------------------------------------------------------------------------------------
" Yankround
"--------------------------------------------------------------------------------------------------------
let g:yankround_max_history = 50
nmap <F5> :CtrlPYankRound<CR>

"--------------------------------------------------------------------------------------------------------
" vim-argwrap
"--------------------------------------------------------------------------------------------------------
nnoremap ,l :ArgWrap<CR>

"--------------------------------------------------------------------------------------------------------
" diminactive
"--------------------------------------------------------------------------------------------------------
let g:diminactive_enable_focus = 1
:hi ColorColumn ctermbg=235 guibg=#eee8d5

"--------------------------------------------------------------------------------------------------------
" Gundo
"--------------------------------------------------------------------------------------------------------
let g:gundo_prefer_python3 = 1
nmap <F6> :GundoToggle<CR>

"--------------------------------------------------------------------------------------------------------
" vim-g (Currently not configured)
"--------------------------------------------------------------------------------------------------------
let g:vim_g_command = "G"
let g:vim_g_f_command = "Gf"

"========================================================================================================
" NOTES AND DOCUMENTATION
"========================================================================================================
" Plugin: eunuch.vim (not installed but documented)
" :Delete: Delete a buffer and the file on disk simultaneously.
" :Unlink: Like :Delete, but keeps the now empty buffer.
" :Move: Rename a buffer and the file on disk simultaneously.
" :Rename: Like :Move, but relative to the current file's containing directory.
" :Chmod: Change the permissions of the current file.
" :Mkdir: Create a directory, defaulting to the parent of the current file.
" :Cfind: Run find and load the results into the quickfix list.
" :Clocate: Run locate and load the results into the quickfix list.
" :Lfind/:Llocate: Like above, but use the location list.
" :Wall: Write every open window. Handy for kicking off tools like guard.
" :SudoWrite: Write a privileged file with sudo.
" :SudoEdit: Edit a privileged file with sudo.

" TODO: Add more highlighting ...

" NOTE PYTHON: Install flake8, isort, yapf for ALE

" VUNDLE HELP:
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal