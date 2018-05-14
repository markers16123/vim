http://www.fprintf.net/vimCheatSheet.html

# Visual

## [Folding](http://vim.wikia.com/wiki/Folding)

- `zc`: close
- `zo`: open
- `za`: toggle
- `zC`: close all folds at the cursor
- `zO`: open all folds at the cursor
- `zA`: toggle all folds at the cursor
- `zR`: expand all
- `zM`: collapse all
- `zr`: expand one depth
- `zm`: collapse one depth

# Moving

# to char

- `f{char}`: find, To [count]'th occurrence of {char} *to the right*. The cursor is *placed on {char}* (inclusive).
- `t{char}`: till, Till before [count]'th occurrence of {char} *to the right*. The cursor is placed on the character *left of {char}* (inclusive).
- `F{char}`: Find, To the [count]'th occurrence of {char} *to the left*. The cursor is *placed on {char}* (inclusive).
- `T{char}`: Till, Till after [count]'th occurrence of {char} *to the left*. The cursor is placed on the character *right of {char}* (inclusive).
- `;`: Repeat latest `f`, `t`, `F` or `T` [count] times.
- `,`: Repeat latest `f`, `t`, `F` or `T` in *opposite direction* [count] times.

## marks

- `m{register}`: moves the cursor to the *line and column* for *mark {register}*.
- ```{register}``: moves the cursor to the *beginning of the line* where *mark {register}* is set.
- ```.``: moves the cursor to the *line and column* where the *last edit was made*.
- `'.`: moves the cursor to the *beginning of the line* where the *last edit was made*
- `'"`: moves the cursor to the *last position of the cursor* when you *exited the previous*

commands:

- `:marks`: shows all marks set.
- `:marks {register}`: shows the mark named {register}.
- `:jumps`: shows the jumplist.


## history

- **Ctrl-o**: moves the cursor to the *last jump*.
- **Ctrl-i**: moves the cursor to the *previous jump*.

### in screen or viewport

- `H`: moves the cursor to the *top* of the screen or viewport.
- `M`: moves the cursor to the *middle* of the screen or viewport.
- `L`: moves the cursor to the *bottom* of the screen or viewport.

# Editing

## Macro

Recording a macro
- Begin recording with the `q{register}` command.
- Do the things
- End recording with the `q` command.

Play a macro
- Replay macro wherever you want with the `@{register}` command.

## Surround

플러그인을 설치해야 한다.
```vim
Plugin 'tpope/vim-surround'
```

`.`을 이용하여 반복적인 작업을 하려면 [`tpope/vim-repeat`](https://github.com/tpope/vim-repeat) 플러그인도 함께 설치한다.

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
| `"`Hello World!`"` | `ds"` | Hello World! |
| `<p>`Hello World!`</p>` | `dst` | Hello World |

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
| Hello World! | `vee`, `S"` | Hello "World!" |
| Hello World! | `V`, `S<div class="container">` | `<div class="container">`<br>Hello World!<br>`</div>` |




