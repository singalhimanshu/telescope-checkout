local actions = require('telescope.actions')

local checkout_actions = {}

checkout_actions.set_branch = function(prompt_bufnr)
  local entry = actions.get_selected_entry(prompt_bufnr)

  actions.close(prompt_bufnr)

  print(entry.value)
  local git_cmd = '!git checkout ' .. entry.value
  vim.cmd(git_cmd)
end

checkout_actions.get_current_ref = function()
  local current = vim.fn.system('git symbolic-ref --short -q HEAD || git rev-parse --short HEAD')
  current = string.gsub(current, '\n', '')
  return current
end

return checkout_actions
