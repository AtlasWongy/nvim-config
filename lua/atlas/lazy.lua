local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "atlas.plugins" }
})

-- Remove when more confident
--require("lazy").setup({                                      
--    require "atlas.plugins.colorscheme",                     
--    require "atlas.plugins.treesitter",                      
--    require "atlas.plugins.treesitter-textobjects",          
--    require "atlas.plugins.nvim-lspconfig",                  
--    require "atlas.plugins.mason",                           
--    require "atlas.plugins.mason-lspconfig",                 
--    require "atlas.plugins.blink-cmp",                       
--M    require "atlas.plugins.lazydev",                         
--})                                                           
