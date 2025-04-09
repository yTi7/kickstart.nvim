local map = vim.keymap.set

-- Custom Mappings
map('n', '\\', function()
  Snacks.explorer()
end, {
  desc = 'Snacks explorer',
})

map('n', '<leader>w', function()
  vim.cmd 'w'
end, { desc = 'write file' })

map('n', '<leader>fl', function()
  Snacks.picker.grep()
end, {
  desc = 'Live grep',
})

map('n', '<leader><S-x>', function()
  vim.cmd 'qall'
end, {
  desc = 'exit nvim',
})

map('n', 'gp', function()
  vim.cmd 'silent %!prettier --stdin-filepath %'
end, {
  desc = 'Prettier format',
})

map({ 'n', 'i', 'v', 'x' }, '<A-j>', function()
  vim.cmd 'm +1'
end, {
  desc = 'Move line down',
})

map({ 'n', 'i', 'v', 'x' }, '<A-k>', function()
  vim.cmd 'm -2'
end, {
  desc = 'Move line up',
})
