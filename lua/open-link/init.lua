local util = require "open-link.util"
local M = {}

local defaultBrowser = {
  '/usr/bin/open', '-a',  '/Applications/Google Chrome.app/'
}

local open_link = function()
  local execCmd = defaultBrowser
  local result = util.get_visual_selection()
  if result and result[1] then
    table.insert(execCmd, result[1])
    vim.fn.jobstart(execCmd)
  end
end

--- Setup function for open-link plugin
--- @param opts? {browserCmd?: string[]}
function M.setup(opts)
  opts = opts or {}

  defaultBrowser = opts.browserCmd or defaultBrowser

  vim.api.nvim_create_user_command('OpenLink', open_link, {
    desc = 'Open selected url in the browser'
  })
end

return M
