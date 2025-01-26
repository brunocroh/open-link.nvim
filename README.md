# Open Link Neovim Plugin

A simple Neovim plugin to open selected text as URLs in Google Chrome.

## Features

- Open selected text/URLs directly in Google Chrome browser
- Configurable keybinding
- Visual mode selection support

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  'brunocroh/open-link.nvim',
  config = function()
    require('open-link').setup({
      -- optional: change default keybinding
      key = '<leader>go'
    })
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

## Configuration

Default config:

```lua
require('open-link').setup({
  key = '<leader>go' -- default keybinding
})
```

## Requirements

- Neovim 0.5 or higher
- Google Chrome installed
- MacOS (currently only supports MacOS)

## License

MIT
