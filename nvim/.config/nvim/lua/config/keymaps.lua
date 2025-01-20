vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap
local cmd = vim.cmd
local api = vim.api

-- Basics
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap.set('n', '<Leader>ww', '<cmd>set wrap!<CR>')

-- Save and Quit
keymap.set('n', '<Leader>w', '<CMD>write<CR>', { desc = 'Write' })
keymap.set('n', '<Leader>q', '<CMD>q<CR>', { desc = 'Quit' })
keymap.set('n', '<Leader>Q', ':q!<CR>', { desc = 'Force Quit' })

-- Replace word
keymap.set('n', '<leader>S', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Replace word at cursor' })

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap.set('n', '<leader>z', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Terminal
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
keymap.set('n', '<leader>T', function()
  vim.cmd 'split'
  vim.cmd 'terminal'
end, { desc = 'Open [T]erminal' })

-- Toggle wrap
keymap.set('n', '<leader>tw', ':se wrap!<CR>', { desc = 'Toggle wrap', silent = true })

-- Window splitting and navigation
keymap.set('n', '<leader>xn', '<CMD>vnew<CR>', { desc = 'Open new buffer in vertical split' })
keymap.set('n', '<leader>xv', '<C-w>v', { desc = 'Split window vertically' })
keymap.set('n', '<leader>xh', '<C-w>s', { desc = 'Split window horizontally' })
keymap.set('n', '<leader>xe', '<C-w>=', { desc = 'Make split windows equal width' })
keymap.set('n', '<leader>xx', cmd.close, { desc = 'Close current split window', silent = true })
keymap.set('n', '<A-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<A-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<A-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<A-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Tabs
keymap.set('n', '<leader>po', cmd.tabnew, { desc = 'Open new tab' })
keymap.set('n', '<leader>px', cmd.tabclose, { desc = 'Close current tab' })
keymap.set('n', '<leader>pn', cmd.tabn, { desc = 'Next tab' })
keymap.set('n', '<leader>pp', cmd.tabp, { desc = 'Previous tab' })

-- Buffers
keymap.set('n', '[b', cmd.bprevious, { desc = 'Previous buffer' })
keymap.set('n', ']b', cmd.bnext, { desc = 'Next buffer' })

-- better indenting
keymap.set('v', '<', '<gv', { desc = 'Move left' })
keymap.set('v', '>', '>gv', { desc = 'Move right' })

-- move highlighted lines in v mode
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move down', silent = true })
keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move up', silent = true })

-- Highlight when yanking (copying) text
api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
