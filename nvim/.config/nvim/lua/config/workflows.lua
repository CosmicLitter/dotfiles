-- Obsidian hotkeys
vim.keymap.set('n', '<leader>ok', ":!mv '%:p' '/home/brandon/SecondBrain/07 - Zettelkasten' <cr>:bd<cr>")
vim.keymap.set('n', '<leader>vdd', ":!rm '%:p' <cr>:bd<cr>")
vim.keymap.set('n', '<leader>oo', function()
  local file_name = vim.fn.input 'Enter file name: '
  vim.cmd('ObsidianSearch ' .. file_name)
end)
vim.keymap.set('n', '<leader>on', ':ObsidianNew<cr>')
vim.keymap.set('n', '<leader>oq', ':ObsidianQuickSwitch<cr>')
vim.keymap.set('n', '<leader>of', ':ObsidianFollowLink<cr>')
vim.keymap.set('n', '<leader>ovf', ':ObsidianFollowLink vsplit<cr>')
vim.keymap.set('n', '<leader>ob', ':ObsidianBacklinks<cr>')
vim.keymap.set('v', '<leader>ol', ':ObsidianLink<cr>')
vim.keymap.set('v', '<leader>ln', function()
  local file_name = vim.fn.input 'Enter a file name: '
  vim.cmd(':ObsidianLinkNew ' .. file_name)
end)

vim.keymap.set('n', '<leader>oh', ':ObsidianSearch HOME<cr><cr>')
