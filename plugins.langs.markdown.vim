" plugins.langs.markdown.vim
"

" Markdown
"" Plugin: Goyo {{{
  " Distraction-free writing
  Plug 'junegunn/goyo.vim'
  " Integrate with other plugins
  function! s:goyo_enter()
    silent !tmux set status off
    set colorcolumn=
    set noshowmode
    set noshowcmd
    set scrolloff=999
    Limelight
    LocalIndentGuide -hl -cc
  endfunction

  function! s:goyo_leave()
    silent !tmux set status on
    set colorcolumn=80
    set showmode
    set showcmd
    set scrolloff=3
    Limelight!
    LocalIndentGuide +hl +cc
  endfunction
  autocmd! User GoyoEnter nested call <SID>goyo_enter()
  autocmd! User GoyoLeave nested call <SID>goyo_leave()
"" }}}

