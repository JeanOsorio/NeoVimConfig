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

null_ls.setup({
  debug = false,
  sources = sources,
  on_attach = function(client)
    if client.server_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end,
})
