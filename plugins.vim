" plugins.vim
"

call plug#begin('$VIM_HOME/plugged')

" Define plugins to load into Vim
let plugins_enabled = [
\   'search',
\   'langs.general',
\   'langs.javascript',
\   'langs.html',
\   'langs.markdown',
\   'themes'
\ ]

for plugin in plugins_enabled
    let plugin_path = $VIM_HOME . '/plugins.' . plugin . '.vim'
    " 플러그인 파일이 존재할 경우 소스 import
    if filereadable(plugin_path)
        " source 명령어 실행
        execute 'source ' . plugin_path
    endif
endfor

call plug#end()
runtime plugin/shortcut.vim
