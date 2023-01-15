## History:

- [x] zen mode plugin
- [x] needs folding keybind, default blindings
- [x] needs diff checker
- [x] cursor smaller on insert mode
- [x] lisp configure
- [x] fix comment
- [x] find and replace - using native
- [ ] debugger
- [x] md viewer
- [ ] make iterm faster
- [ ] autcomplete iterm

## Keybinds

### Code Folding

- `zf` - open single level fold
- `zF` - open all fold
- `zM` - close all folds
- `zm` - close single level fold

### LSP Support

- `gd` - go to definition
- `gf` - show references - (should be gr)
- `gi` - list implementations
- `<F2>` - rename
- `K` - hover doc
- `<leader>ca` - code action
- `<leader>sl` - see line issue
- `<leader>sl` - show buffer issues
- `<leader>oi` - organise imports
- `cd` - in normal mode to select current buffer director/<

#### Search & Replace

- `:s/find_word/replace_word` - find on line and replace
- `:%s/find_word/replace_word` - find on line and replace
- `/word/C` - case-sensitive search
- `/word/c` - case-insensitive search

### Terminal

- `ls -tr` - sort by last modified (at bottom)

### Markdown

- `:MarkdownPreview` - open in browser
