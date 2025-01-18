vim.cmd("set expandtab")          -- Use spaces instead of tabs
vim.cmd("set tabstop=2")          -- Number of spaces a tab counts for
vim.cmd("set softtabstop=2")      -- Number of spaces to insert for a tab
vim.cmd("set shiftwidth=2")       -- Number of spaces for auto-indents
vim.g.mapleader = " "              -- Set leader key to space
vim.g.background = "light"         -- Set background to light

vim.opt.swapfile = false           -- Disable swap files

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')  -- Move to the window above
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')  -- Move to the window below
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')  -- Move to the window left
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')  -- Move to the window right

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')  -- Clear search highlights
vim.wo.number = true  -- Enable line numbers

-- Function to open terminal in the bottom right corner
function OpenBottomRightTerminal()
  -- Create a horizontal split and open terminal
  vim.cmd("split | terminal")
  -- Move to the right split
  vim.cmd("wincmd l")
end

-- Key mapping to open terminal in bottom right
vim.keymap.set('n', '<leader>t', OpenBottomRightTerminal)  -- Open terminal with <leader>t

-- Key mapping to quit terminal
vim.keymap.set('t', '<leader>q', '<C-\\><C-n>:bdelete<CR>')  -- Quit terminal with <leader>q

-- Open terminal in a vertical split
vim.keymap.set('n', '<leader>vt', ':vsplit | terminal<CR>')  -- Open terminal in vertical split

