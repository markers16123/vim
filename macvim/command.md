

# Editor
## Surround

플러그인이 필요하다.

```vim
Plugin 'tpope/vim-surround'
```

### ysiw

커서가 있는 단어 앞 뒤에 문자 또는 태그를 삽입한다.
```vim
var val = f|oo;
" ysiw'
var val = |'foo'
" u
var val = |foo
"ysiw[
var val = |[ foo ]
"ysiw<div>
var val = |<div>foo</div>
```



