local util = require "open-link.util"
local M = {}

local defaultBrowser = {
  '/usr/bin/open', '-a', '/Applications/Google Chrome.app/'
}

local open_link = function()
  local execCmd = defaultBrowser
  local lines = util.get_visual_selection()


  if type(lines) ~= 'string' then
    lines = table.concat(lines, " ")
  end

  local url = util.extract_url(lines)


  vim.print('HERE WE GO')
  vim.print(url)

  if not url then
    vim.notify('link not found', vim.log.levels.INFO)
  end

  table.insert(execCmd, url)
  vim.fn.jobstart(execCmd)
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
