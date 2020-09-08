local actions = require('telescope.actions')
local pickers = require('telescope.pickers')
local sorters = require('telescope.sorters')
local finders = require('telescope.finders')
local checkout_actions = require('telescope_checkout.checkout_actions')
local init = {}

init.checkout = function(opts)
  local branches_str = vim.fn.system('git branch -a')
  -- TODO: Remove current branch from this table
  -- TODO: Show previous ref first
  local branches_list = vim.split(branches_str, "\n")

  local results = {}
  for i=1, #branches_list do
    table.insert(results, branches_list[i])
  end

  pickers.new(opts, {
    prompt = 'Branches',
    finder = finders.new_table(results),
    sorter = sorters.get_norcalli_sorter(),

    attach_mappings = function(_, map)
      map('i', '<CR>', checkout_actions.set_branch)
      return true
    end,
  }):find()
end

return init
