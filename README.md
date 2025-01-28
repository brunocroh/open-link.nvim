# Open Link Neovim Plugin

A simple Neovim plugin to open selected text as URLs in your browser.

## Features

- Open selected URLs directly in your browser

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  'brunocroh/open-link.nvim',
  config = function()
    require('open-link').setup({
      browserCmd = { '/usr/bin/open', '-a',  '/Applications/Firefox.app/' }
    })

    -- Map open link to comando <leader>go in visual mode
    vim.keymap.set({ "v" }, "<leader>go", "<cmd>OpenLink<cr>", { desc = "Open link in the browser" })
  end
}
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
  'brunocroh/open-link.nvim',
  config = function()
    require('open-link').setup()
  end
}
```

## Usage

1. Enter visual mode and select text/URL
2. Press `<leader>go` (or your configured keybinding)
3. The selected text will open in Google Chrome

## Requirements

- Neovim 0.5 or higher
- Google Chrome installed
- MacOS (currently only supports MacOS)

## License

MIT
