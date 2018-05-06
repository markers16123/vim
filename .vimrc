" -------------------------------------------------------------
" Plugins
" -------------------------------------------------------------

" set the runtime path to include Vundle and initialize
" Install Plugins: :PluginInstall
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"
" [ Common ]
Plugin 'tpope/vim-repeat'
Plugin 'L9' " Vim-script library, which provides some utility functions and
Plugin 'easymotion/vim-easymotion'


" https://github.com/nodejs/node/wiki/Vim-Plugins
"
" [ Languages Specific ]
" `Node.vim` Tools and utilities to make Vim superb for developing with Node.js Like Rails.vim for Ruby on Rails.
Plugin 'moll/vim-node'
" Markdown Syntax Plugin
Plugin 'plasticboy/vim-markdown'
" NSIS Syntax Highlighting Plugin
Plugin 'vim-scripts/NSIS-syntax-highlighting' " by Chris Morgan
" PowerShell Synctax Plugin
Plugin 'pprovost/vim-ps1' " by Peter Provost
au BufNewFile,BufRead *.ps1,*.psm1,*.psc1 setf ps1

"
" [ Linter ]
" Tabular Align declarations, equals signs, etc.
" JSLint Lint your code from Vim
" JSHint JSHint plugin

"
" [ Synctax ]
Plugin 'pangloss/vim-javascript' " indentation + syntax
Plugin 'jelera/vim-javascript-syntax' " More complete syntax than the one above
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-pug'
Plugin 'wavded/vim-stylus' " Sytax highlighting for Stylus.
Plugin 'vim-syntastic/syntastic'
Plugin 'juvenn/mustache.vim'

"
" [ Editing ]
Plugin 'tpope/vim-surround'
" tComment auto comment
Plugin 'tomtom/tcomment_vim'
" NERD_Commenter auto comment
Plugin 'scrooloose/nerdcommenter'
" JavaScriptIndent web-indent - Javascript indenter (HTML indent is included) [somewhat buggy, clicking tab won't indent]
Plugin 'JavaScript-Indent'
" vim-jsbeautify beautify based on .editorconfig
Plugin 'maksimr/vim-jsbeautify'
" esformatter Javascript indenting. Handles promise chains correctly while other indenters do not.
" sudo npm install -g esformatter
nnoremap <silent> <leader>e :call JSFormat()<cr>
function! JSFormat()
  " Preparation: save last search, and cursor position.
  let l:win_view = winsaveview()
  let l:last_search = getreg('/')
  let fileWorkingDirectory = expand('%:p:h')
  let currentWorkingDirectory = getcwd()
  execute ':lcd' . fileWorkingDirectory
  execute ':silent' . '%!esformatter'
  if v:shell_error
    undo
    "echo "esformatter error, using builtin vim formatter"
    " use internal formatting command
    execute ":silent normal! gg=G<cr>"
  endif
  " Clean up: restore previous search history, and cursor position
  execute ':lcd' . currentWorkingDirectory
  call winrestview(l:win_view)
  call setreg('/', l:last_search)
endfunction

"
" [ Snippets ]
" SnipMate Text-Mate like snippets
" nodejs-snippets node specific snippet for SnipMate. Consider forking and improving

"
" [ Completion ]
" vim-node A dictionary for node
" vim-nodejs-complete nodejs's omnifunc function, ctrl-x_ctrl-o to complete
" vim-nodejs-complete (local completion) This is a fork of 'vim-nodejs-complete' that adds local module completion by searching through the 'node_modules' directory/subdirectories and processing the .js and package.json files.
" tern_for_vim gives a more sophisticated omnifunc function than vim-nodejs-complete
Plugin 'valloric/youcompleteme'



" [ Browsing ]
" Command-T TextMate-like Command-T explorer. Find files by pattern
Plugin 'wincent/command-t'
" NERD_Tree Tree filesystem browser
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Ack better than grep
" Fuzzyfinder find files by pattern
Plugin 'fuzzyfinder'

"
" [ Colorschemes ]
" ColorSamplePack
" Solarized
Plugin 'altercation/vim-colors-solarized'
" Mustang
Plugin 'marcus/vim-mustang'
" xoria256 finely tuned soft gamma colorscheme
Plugin 'xoria256.vim'
" Mango color scheme tailored to JavaScript
Plugin 'goatslacker/mango.vim'

"
" [ Debugging ]
" vimdebug line-by line debugging in vim.

"
" [ Miscellaneous ]
" These plugins are not specific to node.js development but are widely used in the community
" Zencoding Generate html structures from CSS-like syntax
" fugitive - Git commands in your VIM
Plugin 'tpope/vim-fugitive'
" EasyMotion - Move faster in your text

"
" [ User config ]
" Show off your vim skills by including a link to your pimped out ~/.vim
" 
" Floby
" alessioalex
" smith
" wavded
" aureooms
" aXen
" posquit0

call vundle#end()            " required
filetype plugin indent on    " required


" -------------------------------------------------------------
" Environtment Settings
" -------------------------------------------------------------
"set nocompatible     " 오리지날 VI와 호환하지 않음
set autoindent       " 자동 들여쓰기
set cindent          " C 프로그래밍용 자동 들여쓰기
set smartindent      " 스마트한 들여쓰기
set wrap
set nowrapscan       " 검색할 때 문서의 끝에서 처음으로 안돌아감
" set nobackup         " 백업 파일을 안만듬
set noswapfile
" set visualbell      " 키를 잘못눌렀을 때 화면 프레시
set ruler            " 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set shiftwidth=4     " 자동 들여쓰기 4칸
set number           " 행번호 표시, set nu 도 가능
set relativenumber   " 커서 기준 라인번호 시작 (norelativenumber)
set fencs=ucs-bom,utf-8,euc-kr.latin1 " 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8 " 파일저장인코딩
set tenc=utf-8       " 터미널 인코딩
set expandtab       " 탭대신 스페이스
set hlsearch         " 검색어 강조, set hls 도 가능
set ignorecase       " 검색시 대소문자 무시, set ic 도 가능
set tabstop=4        " 탭을 4칸으로
set shiftwidth=4     " <<, >>로 인덴트를 삽입할때
set lbr
set incsearch        " 키워드 입력시 점진적 검색
set cursorline       " 편집 위치에 커서 라인 설정
" set cursorcolumn      "편집 위치에 커서 컬럼 설정
set laststatus=2     " 상태바 표시를 항상한다
filetype indent on   " 파일 종류에 따른 구문강조
set history=1000     " vi 편집기록 기억갯수 .viminfo에 기록
"highlight Comment term=bold cterm=bold ctermfg=4 " 코멘트 하이라이트
set mouse=a          " vim에서 마우스 사용
set t_Co=256         " 색 조정
" hi cursorline ctermfg=White ctermbg=gray cterm=bold guifg=white guibg=gray gui=bold
" hi CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
set equalalways	     " Split 화면 크기를 항상 동일하게 유지
set backspace=indent,eol,start " Allow backword-deletion
" Synctex highlihting
syntax on "  구문강조 사용
set background=dark  " 하이라이팅 lihgt / dark
color mango


" -------------------------------------------------------------
" Key Mappings
" -------------------------------------------------------------
" <F1> 폴딩
"map <F1> v]}zf
map <F1> :tabnew<cr>
" <F2> 창이동
"map <F2> :CtrlP .<cr>
" <F3> NERDTree
map <F3> :NERDTreeToggle<cr>
" <F4> Tlist
"map <F4> :Tlist<cr>
map <F4> :TagbarToggle<cr>
" <F5> [i 정의 내용 보여주기
map <F5> [i
" <F6> gd 변수 선언으로 이동
map <F6> gd
" <F7> shell
map <F7> :VimShell<cr>
" <F8> Dox
map <F8> :Dox<cr>
" bnext, bprev
map <F11> :bp<cr>
map <F12> :bn<cr>
" tabn
map <S-Tab> gt<cr>
" bnext
map <S-F1> :bnext<cr>

" Mappings to move lines
"_________________________________________________________
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
