# telescope-checkout

[WIP] Switch[](Switch) branches with [telescope.nvim](https://github.com/nvim-lua/telescope.nvim).

## Installation
Make sure you have installed [telescope.nvim](https://github.com/nvim-lua/telescope.nvim)

```vim
Plug 'the-codingguy/telescope-checkout'
```

## Usage

```lua
-- Switch branch
require('telescope_checkout.init').checkout()
```

### Example

```vimscript
nnoremap <Leader>gc :lua require'telescope_checkout.init'.checkout{}<CR>
```

## Current State:
This is currently **WIP**
