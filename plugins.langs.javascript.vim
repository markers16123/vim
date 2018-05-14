" plugins.langs.javascript.vim
"

"" Plugin: Tern for Vim {{{
  " TODO: Key mapping
  " Tern-based Javascript editing support
  " Hook into omni completion to handle autocompletion and provide more
  function! BuildTern(info)
    " info is a dictionary with 3 fields
    " - name:   name of the plugin
    " - status: 'installed', 'updated', or 'unchanged'
    " - force:  set on PlugInstall! or PlugUpdate!
    if a:info.status == 'installed' || a:info.force
      !npm install
    endif
  endfunction
  Plug 'marijnh/tern_for_vim', { 'for': ['javascript'], 'do': function('BuildTern') }
  " Set timeout
  let g:tern_request_timeout=1
  " Display argument type hints when the cursor is left over a function
  let g:tern_show_argument_hints='on_hold'
  " Display function signature in the completion menu
  let g:tern_show_signature_in_pum='0'
  " Disable Shortcuts
  let g:tern_map_keys=0
"" }}}


"" Plugin: Vim Node {{{
  " Tools and environment to make Vim superb for developing with Node.js
  Plug 'moll/vim-node'
"" }}}


"" Plugin: Javascript Libraries Syntax {{{
  " Syntax file for JavaScript libraries
  Plug 'othree/javascript-libraries-syntax.vim'
  " Set up used libraries
  let g:used_javascript_libs='react,jquery,underscore,handlebars'
"" }}}
