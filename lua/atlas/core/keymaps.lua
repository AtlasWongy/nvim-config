-- Tabs --                                                              
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") -- Open new tab    
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") -- Close new tab 

-- Diagnostics --
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
