" plugins.search.vim
"

"" Plugin: vim-node-dict {{{
  " https://github.com/guileen/vim-node-dict
  " vim-node: A dictinoary for node
  Plug 'guileen/vim-node-dict'
"" }}}


"" Plugin: vim-node-dict {{{
  " https://github.com/myhere/vim-nodejs-complete
  " vim-nodejs-complete nodejs's omnifunc function, ctrl-x_ctrl-o to complete
  Plug 'myhere/vim-nodejs-complete'
  let g:nodejs_complete_config = {
  \  'js_compl_fn': 'jscomplete#CompleteJS',
  \  'max_node_compl_len': 15
  \}
  " automatically open and close the popup menu / preview window
  au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"" }}}

"" Plugin: vim-node-dict {{{
  " https://github.com/ahayman/vim-nodejs-complete
  " vim-nodejs-complete (local completion) This is a fork of 'vim-nodejs-complete' that adds local module completion by searching through the 'node_modules' directory/subdirectories and processing the .js and package.json files.
  "Plug 'ahayman/vim-nodejs-complete'
"" }}}

"" Plugin: vim-node-dict {{{
  " https://github.com/ternjs/tern_for_vim
  " tern_for_vim gives a more sophisticated omnifunc function than vim-nodejs-complete
  Plug 'ternjs/tern_for_vim'
"" }}}
