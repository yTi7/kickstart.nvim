local map = vim.keymap.set

-- Custom Mappings
map('n', '\\', function()
  Snacks.explorer()
end, {
  desc = 'Snacks explorer',
})
