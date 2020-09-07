
local function checkout()
  local branches = vim.cmd('!git branche')
  print(type(branches))
end
