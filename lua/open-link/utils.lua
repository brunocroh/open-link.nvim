local M = {}

--- Get sleeected text in visual mode
--- @return string|string[]
function M.get_visual_selection()
  local vstart = vim.fn.getpos("'<")
  local vend = vim.fn.getpos("'>")

  local line_start = vstart[2]
  local line_end = vend[2]

  return vim.fn.getline(line_start, line_end)
end

return M
