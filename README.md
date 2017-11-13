# begin-with-init.vim

[![Circle CI](https://img.shields.io/circleci/project/github/raviqqe/begin-with-init.vim.svg?style=flat-square)](https://circleci.com/gh/raviqqe/begin-with-init.vim)
[![License](https://img.shields.io/github/license/raviqqe/begin-with-init.vim.svg?style=flat-square)](LICENSE)

Opinionated [neovim] distribution as `init.vim`

`begin-with-init.vim` gives you a starter kit of [neovim] with state-of-the-art
plugins and common best practices.
It's just your initial configuration file `init.vim`, but not a heavy stack of
plugins.

## Installation

At the top directory,

```sh
./install.sh
```

## Bundled Plugins

- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) - Show git changes of each line
- [vim-autoformat](https://github.com/Chiel92/vim-autoformat) - Format buffers automatically
- [vim-easymotion](https://github.com/easymotion/vim-easymotion) - Jump anywhere, faster
- [vim-lastplace](https://github.com/farmergreg/vim-lastplace) - Restore previous position of files
- [auto-pairs](https://github.com/jiangmiao/auto-pairs) - Insert or delete brackets, parens, quotes in pair
- [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack) - Make your yank register a stack
- [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace) - Highlight and delete extra whitespaces
- [vim-mkdir](https://github.com/pbrisbin/vim-mkdir) - Create missing directories before saving buffers
- [vim-quickrun](https://github.com/thinca/vim-quickrun) - Run a whole or part of buffers as scripts
- [vim-commentary](https://github.com/tpope/vim-commentary) - Comment or comment out code by one command
- [vim-endwise](https://github.com/tpope/vim-endwise) - Complement `end`-like keywords
- [vim-sleuth](https://github.com/tpope/vim-sleuth) - Set indent settings with heuristics
- [vim-surround](https://github.com/tpope/vim-surround) - Manipulate surroundings like parens, brackets, and quotes
- [lightline.vim](https://github.com/itchyny/lightline.vim) - Lightweight and configurable statusline
- [ale](https://github.com/w0rp/ale) - Asynchronous syntax check & linting
- [vim-auto-save](https://github.com/907th/vim-auto-save) - Save buffers automatically

### Fuzzy finder

- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder command
- [fzf.vim](https://github.com/junegunn/fzf.vim) - fzf integration for Vim

### Language support

- [vim-polyglot](https://github.com/sheerun/vim-polyglot) - Multi language integration
- [deoplete.nvim](https://github.com/Shougo/deoplete.nvim) - Auto-completion engine

## Key mappings

```vim
" Map a leader to the easiest key to push ever.
let g:mapleader = "\<space>"

" Swap gj/gk with j/k.
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap gj j
nnoremap gk k

" Unhighlight by pusing escape keys twice.
nnoremap <esc><esc> :nohlsearch<cr>

" Yank a line with Y.
nnoremap Y y$

" Open buffers, files, and so on with fzf.
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>c :History:<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader>l :Lines<cr>
nnoremap <leader>m :Maps<cr>
nnoremap <leader>r :Ag<cr>
```

You can navigate completion results from `deoplete.nvim` with Ctrl-N/P.

You may also check other key mappings from the plugins.

- [vim-easymotion](https://github.com/easymotion/vim-easymotion)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-surround](https://github.com/tpope/vim-surround)

## Customization

Edit your own `~/.config/nvim/init.vim`!

## License

[MIT](LICENSE)

[neovim]: https://github.com/neovim/neovim
