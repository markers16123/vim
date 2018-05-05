

# Editor
## Surround

플러그인이 필요하다. `.`을 이용하여 반복적인 작업을 하려면 [`tpope/vim-repeat`](https://github.com/tpope/vim-repeat) 플러그인도 함께 설치한다.

```vim
Plugin 'tpope/vim-surround'
```

### cs

convert surround

| before | keys | after |
| --- | --- | --- |
| `"`Hello World!`"` | `cs"[` | `[ `Hello World!` ]` |
| `"`Hello World!`"` | `cs"<p>` | `<p>`Hello World`</p>` |
| `<p>`Hello World!`</p>` | `cst"` | `"`Hello World!`"` |

### ds

delete surround

| before | keys | after |
| --- | --- | --- |
| `"`Hello World!`"` | `dw"` | Hello World! |
| `<p>`Hello World!`</p>` | `dwt` | Hello World |

### ysiw

(`iw` is a text object)
`b` is brace
`t` is tag

| before | keys | after |
| --- | --- | --- |
| Hello World! | `ysiw"` | `"`Hello`"` World! |
| Hello World! | `ysiwb` | `(`Hello`)` World! |
| Hello World! | `ysiw<span>` | `<span>`Hello`</span>` World! |

### yss

| before | keys | after |
| --- | --- | --- |
| Hello World! | `yss"` | `"`Hello World!`"` |
| Hello World! | `yssb` | `(`Hello World!`)` |
| Hello World! | `yss<span>` | `<span>`Hello World!`</span>` |

### S
| before | keys | after |
| --- | --- | --- |
| Hello World! | `veeS"` | Hello "World!" |
| Hello World! | `VS<div class="container">` | `<div class="container">`<br>Hello World!<br>`</div>` |


커서가 있는 단어 앞 뒤에 문자 또는 태그를 삽입한다.
var val = f|oo;
" ysiw'
var val = |'foo'
"ysiw[
var val = |[ foo ]
"ysiw<div>
var val = |<div>foo</div>



