set hlsearch " 검색어 하이라이팅
set autoindent " 자동 들여쓰기
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
" Set the vertical split character to  a space (there is a single space after '\ ')
" set fillchars+=vert:\  
"set paste " 붙여넣기 계단현상 없애기

set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\ 
" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" 파일 인코딩을 한국어로
set encoding=utf-8
set fileencodings=utf-8,euckr
set mouse=a
set ttymouse=xterm2
set pastetoggle=<Insert>
set nu
filetype indent plugin on
filetype plugin on
let python_version_2=1
let python_highlight_all=1
let g:pydiction_location='$HOME/.vim/complete-dict'

" 구문 강조 사용
if has("syntax")
 syntax on
endif
" 컬러 스킴 사용
colorscheme Tomorrow-Night

" key mapping
map <F2> : diffget<CR>
nnoremap <C-t><C-t> :Tlist<cr>

"cscope setting
set csprg=/usr/bin/cscope

set csto=0
set cst
set nocsverb

if $PROJECT_NAME == "linux"
    cs add $HOME/study/kernel/linux-2.6.32.71/cscope.out
    set tags=$HOME/study/kernel/linux-2.6.32.71/tags
elseif $PROJECT_NAME == "android"
    cs add $HOME/study/android/cscope.out
    set tags=$HOME/study/android/tags
elseif $PROJECT_NAME == "boost"
    cs add /usr/local/src/boost_1_60_0/cscope.out
    set tags=/usr/local/src/boost_1_60_0/tags
endif
set csverb

"========== convenience =====================
nmap <C-L><C-L> :set invnumber<CR>
nmap <C-P> :bp<CR>
nmap <C-N> :bn<CR>

"========== trinity setting ==================
" Open and close all the three plugins on the same time 
nmap <F9>   :TrinityToggleAll<CR>

" Open and close the srcexpl.vim separately 
nmap <F10>   :TrinityToggleSourceExplorer<CR>

" Open and close the taglist.vim separately 
nmap <F11>  :TrinityToggleTagList<CR>

" Open and close the NERD_tree.vim separately 
nmap <F12>  :TrinityToggleNERDTree<CR>

"========== source explorer setting ==================
"nmap <C-J><C-J>j:call g:SrcExpl_Jump()<CR>
"nmap <C-O><C-O> :call g:SrcExpl_GoBack()<CR>

"========== Nerd Tree Setting ========================

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
Bundle 'gmarik/vundle'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'bash-support.vim'

"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_select_completion = ['', '']
"let g:ycm_key_list_previous_completion = ['', '']
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_warning_symbol = '>*'
"
"let mapleader=";"
"nnoremap <leader>g :YcmCompleter GoTo
"" nnoremap gg :YcmCompleter GoToImprecise
"nnoremap <leader>d :YcmCompleter GoToDeclaration
"nnoremap <leader>t :YcmCompleter GetType
"nnoremap <leader>p :YcmCompleter GetParent 
