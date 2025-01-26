local utils = require "open-link.utils"
local M = {}  -- This should be at the top


local open_link = function()
  local result = utils.get_visual_selection()
  if result and result[1] then
    vim.fn.jobstart({'/usr/bin/open', '-a',  '/Applications/Google Chrome.app/', result[1]})
  end
end

--- Setup function for open-link plugin
--- @param opts? {key?: string}
function M.setup(opts)
  opts = opts or {}

  local defaults = {
    key = '<leader>go',
  }

  vim.keymap.set('v', opts.key or defaults.key, open_link, {
    desc = 'Open selected url in the browser'
  })

vim.api.nvim_create_user_command("ReloadPlugin", function()
  package.loaded['open-link'] = nil
  require('open-link').setup()
  print('open link is reloaded')
end, {})

end

return M
