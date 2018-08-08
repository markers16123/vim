" plugins.vim
"

call plug#begin('$VIM_HOME/plugged')

" Define plugins to load into Vim
let plugins_enabled = [
\   'general',
\   'search',
\   'theme',
\   'editor',
\   'langs.html',
\   'langs.js',
\   'completion',
\   'visual',
\ ]

for plugin in plugins_enabled
    let plugin_path = $VIM_SCRIPTS . '/plugins/' . plugin . '.vim'
    " 플러그인 파일이 존재할 경우 소스 import
    if filereadable(plugin_path)
        " source 명령어 실행
        execute 'source ' . plugin_path
    endif
endfor

call plug#end()
runtime plugin/shortcut.vim
