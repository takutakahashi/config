return {
  on_attach = function()
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "<buffer>",
      callback = function()
        vim.lsp.buf.code_action({
          context = { only = { 'source.addMissingImports.ts', 'source.fixAll.ts' } },
          apply = true
        })
      end
    })
    -- vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })"
  end
}
