

# Editor
## Surround

플러그인이 필요하다. `.`을 이용하여 반복적인 작업을 하려면 [`tpope/vim-repeat`](https://github.com/tpope/vim-repeat) 플러그인도 함께 설치한다.

```vim
Plugin 'tpope/vim-surround'
```

### cs

앞뒤 문자를 치환한다.

| keys | | | |
| --- | --- | --- | --- |
| `"Hello World!"` | `cs"[` | `[ Hello World! ]` | `"` 문자를 `[` 문자로 치환한다.
| `"Hello World!"` | `cs"<p>` | `<p>Hello World</p>` | `"` 문자를 `<p>` 태그로 치환한다.
| `<p>Hello World!</p>` | `cst" | `"Hello World!"` | `<p>` 태그를 `"`로 치환

### ds

앞뒤 문자를 제거한다.

```vim
"Hellow world!"
" 

### ysiw

커서가 있는 단어 앞 뒤에 문자 또는 태그를 삽입한다.
```vim
var val = f|oo;
" ysiw'
var val = |'foo'
"ysiw[
var val = |[ foo ]
"ysiw<div>
var val = |<div>foo</div>
```



