local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.diagnostics.eslint,
  b.diagnostics.stylelint,
  b.code_actions.gitsigns,
  b.diagnostics.solhint,
  -- webdev stuff
  -- b.formatting.deno_fmt,
  b.formatting.prettier,
  b.formatting.jq,
  -- Lua
  b.formatting.stylua,
  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  debug = false,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      local bufname = vim.api.nvim_buf_get_name(bufnr)

      -- Check if the file's name starts with ".env"
      if not vim.fn.match(bufname, "/\\.env") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
          end,
        })
      end
    end
  end,
})
