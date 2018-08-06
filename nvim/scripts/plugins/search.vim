" plugins.search.vim
"

"" Plugin: CtrlP {{{
  " Full path fuzzy file, buffer, mru, tag finder for Vim
  Plug 'ctrlpvim/ctrlp.vim'
  " Change default mapping
  let g:ctrlp_map='<c-p>'
  " Change default command
  let g:ctrlp_cmd='CtrlP'
  let g:ctrlp_custom_ignore = 'plugged\|node_modules\|DS_Store\|git'
"" }}}

"" Plugin: ctags {{{
  " It is a tool that makes it easy to navigate large source code projects.
  Plug 'universal-ctags/ctags'
"" }}}

"" Plugin: Fzf {{{
  " Full path fuzzy file, buffer, mru, tag finder for Vim
  " A general-purpose command-line fuzzy finder
  Plug 'junegunn/fzf', { 'do': 'yes \| ./install --all --no-update-rc' }
  Plug 'junegunn/fzf.vim'
"" }}}

"" Plugin: Easymotion {{{
  " Provides a much simpler way to use motions in Vim
  Plug 'Lokaltog/vim-easymotion'
"" }}}

"" Plugin: Vim Signature {{{
  " To place, toggle, display and navigate marks
  " Keymap:
  " mx        Toggle mark 'x' where x is a-zA-Z
  " dmx       Remove mark 'x' where x is a-zA-Z
  " m,        Place the next available mark
  " m.        If no mark on line, place the next available mark
  " m-        Delete all marks from the current line
  " m/        Open location list and display marks
  " m<Space>  Delete all marks from the current buffer
  " m[0-9]    Toggle the corresponding marker !@#$%^&*()
  " m<S-[0-9]>Remove all markers of the same type
  " m?        Open location list and display markers
  " m<BS>     Remove all markers
  " ]`        Jump to next mark
  " [`        Jump to prev mark
  " ]'        Jump to start of next line containg a mark
  " ['        Jump to start of prev line containg a mark
  Plug 'kshenoy/vim-signature'
  " Highlight signs of marks dynamically based upon state
  " indicated by vim-signify
  let g:SignatureMarkTextHLDynamic=1
"" }}}

"" Plugin: TaskList {{{
  " Eclipse like task list
  Plug 'vim-scripts/TaskList.vim'
  " Map TaskList to <leader>T
  nnoremap <silent> <leader>T :TaskList<CR>
"" }}}

"" Plugin: Tagbar {{{
  " Easy way to browse the tags
  Plug 'majutsushi/tagbar'
  " [NOTE] When i get this error 'Ctags doesn't seem to be Exuberant Ctags'
  " execute a command 'brew install ctags-exuberant'
  " then, add in .vimrc 'let
  " g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags''
"" }}}

"" Plugin: NERDTree {{{
  " Explore filesystem with Vim
  Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeTabsToggle'] }
  " Ignore some extensions
  let NERDTreeIgnore=['.o$','.pyc$']
  " Show hidden files
  let NERDTreeShowHidden=1
  " Automatically open NERDTree when vim start up with no files
  " autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
  " Close vim if the only window left open is a NERDTree
  autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree')
  \ && b:NERDTree.isTabTree()) | q | endif
"" }}}

"" Plugin: NERDTree Git Plugin {{{
  " A plugin of NERDTree showing git status flags
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " Use this variable to change symbols
  let g:NERDTreeIndicatorMapCustom = {
  \ 'Modified'  : '*',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Deleted'   : '✖',
  \ 'Dirty'     : '✗',
  \ 'Clean'     : '✔︎',
  \ 'Unknown'   : '?'
  \ }
"" }}}

"" Plugin: NERDTree Tabs {{{
  " NERDTree and tabs together in Vim
  Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }
"" }}}

"" Plugin:  VIM ICONS {{{
  Plug 'ryanoasis/nerd-fonts'
  " requires: Python 2 (or Python 3), python-fontforge package (version 20141231 or later, see the install instructions)
  " alternative install method on OSX: brew install fontforge
  " Plug 'ryanoasis/vim-devicons'
  " let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='x'
"" }}}

"" Plugin: VIM-NERDTREE-SYNTAX-HIGHLIGHT {{{
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  " let g:NERDTreeFileExtensionHighlightFullName = 1
  " let g:NERDTreeExactMatchHighlightFullName = 1
  " let g:NERDTreePatternMatchHighlightFullName = 1
  let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
  let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
"" }}}

