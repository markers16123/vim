" plugins.search.vim
"
" "
" "" Plugin: tern_for_vim {{{
  " " https://github.com/ternjs/tern_for_vim
  " " tern_for_vim gives a more sophisticated omnifunc function than vim-nodejs-complete
  " Plug 'ternjs/tern_for_vim' ", { 'for': 'javascript' }
  " " enhance YCM JS completion with tern's smarts
  " " autocmd FileType javascript setlocal omnifunc=tern#Complete
" "" }}}

" "" Plugin: tern-node-express {{{
    " " https://github.com/angelozerr/tern-node-express
    " " tern-node-express is a plugin which adds support for express web
    " " application framework for node to the JavaSript code intelligence system
    " " Tern.
  " Plug 'angelozerr/tern-node-express'
" "" }}}


"" Plugin: YOUCOMPLETEME {{{
  " A code complete engine for vim
  " https://github.com/valloric/youcompleteme
  "Plug 'valloric/youcompleteme'
  " cd ~/.vim/bundle/youcompleteme
  " ./install.py --clang-completer
  "
  " Failed to start server: [Errno 2] No such file or directory: 'tern': 'tern'

"" }}}


"" Plugin: vim-node-dict {{{
  " https://github.com/guileen/vim-node-dict
  " vim-node: A dictinoary for node
  " " Plug 'guileen/vim-node-dict'
"" }}}


"" Plugin: js-complete-vim {{{
  " The modern completement Vim plugin for javascript guys.
  " https://bitbucket.org/teramako/jscomplete-vim
  " Plug 'teramako/jscomplete-vim'
  " autocmd FileType javascript
    " \ :setl omnifunc=jscomplete#CompleteJS
  " let g:jscomplete_use = ['dom', 'moz', 'es6th'] " xpcom
"" }}}


"" Plugin: vim-node-dict {{{
  " https://github.com/myhere/vim-nodejs-complete
  " vim-nodejs-complete nodejs's omnifunc function, ctrl-x_ctrl-o to complete
  " Plug 'myhere/vim-nodejs-complete'
  " let g:nodejs_complete_config = {
  " \  'js_compl_fn': 'jscomplete#CompleteJS',
  " \  'max_node_compl_len': 15
  " \}
  " automatically open and close the popup menu / preview window
  " au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
  " filetype plugin on
"" }}}


"" Plugin: vim-node-dict {{{
  " https://github.com/ahayman/vim-nodejs-complete
  " vim-nodejs-complete (local completion) This is a fork of 'vim-nodejs-complete' that adds local module completion by searching through the 'node_modules' directory/subdirectories and processing the .js and package.json files.
  " Plug 'ahayman/vim-nodejs-complete'
"" }}}
