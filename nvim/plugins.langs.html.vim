" plugins.langs.html.vim
"

" HTML & CSS
"" Plugin: Emmet {{{
  " Provide Zen-coding for Vim
  Plug 'mattn/emmet-vim', {
  \ 'for': [
  \   'html', 'haml', 'jinja', 'hbs', 'html.handlebars', 'xml',
  \   'css', 'less', 'sass', 'javascript'
  \ ]
  \}
  " Enable all functions, which is equal to
  " n: normal, i: insert: v: visual, a: all
  let g:user_emmet_mode='a'
  " Remap the default Emmet leader key <C-Y>
  let g:user_emmet_leader_key='<C-Z>'
  " Customize the behavior of the languages
  let g:user_emmet_settings={
  \ 'javascript.jsx': {
  \   'extends': 'jsx',
  \ },
  \ 'javascript': {
  \   'extends': 'jsx',
  \ },
  \ 'xml': {
  \   'extends': 'html',
  \ },
  \ 'haml': {
  \   'extends': 'html',
  \ },
  \ 'jinja': {
  \   'extends': 'html',
  \ },
  \ 'hbs': {
  \   'extends': 'html',
  \ },
  \ 'html.handlebars': {
  \   'extends': 'html',
  \ },
  \}
"" }}}
