
let $VIM_HOME = $HOME . '/.config/nvim'
let $VIM_SCRIPTS = $VIM_HOME . '/scripts'

""" General Configuration
if filereadable(expand('$VIM_SCRIPTS/general.vim'))
  source $VIM_SCRIPTS/general.vim
endif
if filereadable(expand('$VIM_SCRIPTS/key-mapping.vim'))
  source $VIM_SCRIPTS/key-mapping.vim
endif
if filereadable(expand('$VIM_SCRIPTS/visual.vim'))
  source $VIM_SCRIPTS/visual.vim
endif


""" Plugin Configuration
" All the vim plugins are managed by 'vim-plug'
" List & configuration of plugins separated to several files 'plugins.*.vim'
if filereadable(expand('$VIM_SCRIPTS/plugins.vim'))
  source $VIM_SCRIPTS/plugins.vim
endif

""" Override Configuration (because of plugins.vim)
"if filereadable(expand('$VIM_SCRIPTS/override.vim'))
"  source $VIM_SCRIPTS/override.vim
"endif

""" GUI Specific Configuration
if has('gui_running')
 if filereadable(expand('$VIM_SCRIPTS/gui.vim'))
   source $VIM_SCRIPTS/gui.vim
 endif
endif


""" Theme Configuration
if filereadable(expand('$VIM_SCRIPTS/theme.vim'))
  source $VIM_SCRIPTS/theme.vim
endif


""" Local Specific Configuration
" Use local vimrc if available
if filereadable(expand('$HOME/.vimrc.local'))
  source $HOME/.vimrc.local
endif
