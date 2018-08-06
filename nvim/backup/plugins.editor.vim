" plugins.editor.vim
"

"" Plugin: surround.vim {{{
  " Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
  Plug 'tpope/vim-surround'
"" }}}

"" Plugin: NERD Commenter {{{
  " For intensely orgasmic commenting
  Plug 'scrooloose/nerdcommenter'
  " Comment the whole lines in visual mode
  let g:NERDCommentWholeLinesInVMode=1
  " Add space after the left delimiter and before the right delimiter
  let g:NERDSpaceDelims=1
  " Remove spaces around comment delimiters
  let g:NERDRemoveExtraSpaces=1
"" }}}

"" Plugin: AUTO PAIR {{{
  " Insert or delete brackets, parens, quotes in pair.
  Plug 'jiangmiao/auto-pairs'
"" }}}

"" Plugin: Prettier {{{ 
  " A vim plugin wrapper for prettier, pre-configured with custom default prettier settings
  " post install (yarn install | npm install) then load plugin only for editing supported files
  Plug 'prettier/vim-prettier', {
  \   'do': 'yarn install',
  \   'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue']
  \ }
  let g:prettier#autoformat = 0
  let g:prettier#exec_cmd_async = 1
  let g:prettier#config#parser = 'babylon'
  autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync
  nmap <Leader>f <Plug>(Prettier)
"" "}}}
