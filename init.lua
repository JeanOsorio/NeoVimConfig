require("custom.options")
require("custom.keymaps")
require("custom.plugins")
require("custom.colorscheme")
require("custom.cmp")
require("custom.nvimtree")
require("custom.lsp")
require("custom.mason")
require("custom.telescope")
-- require("custom.null-ls")
--require("custom.formatter")
require("custom.treesitter")
require("custom.treesitter-context")
require("custom.autopairs")
require("custom.comment")
require("custom.feline")
require("custom.gitsigns")
require("custom.barbar")
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
vim.cmd([[
function! FormatAndReload()
  silent !prettier --write %
  checktime
endfunction
]])
vim.cmd([[
  augroup FormatOnSave
    autocmd!
    autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.json,*.md execute ':silent !prettier --write <afile>' | edit
  augroup END
]])
