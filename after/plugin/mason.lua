-- for knowing which one to install, do :help lspconfig-all
-- MASON
require("mason").setup()
require("mason-lspconfig").setup{
    ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls" }
}
local on_attatch = function(_, _)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup{
    on_attatch = on_attatch,
    capabilities = capabilities,
}
lspconfig.rust_analyzer.setup{
    on_attatch = on_attatch,
    capabilities = capabilities,
    filetypes = {"rust"},
    settings = {
        ["rust_analyzer"] = {
            cargo = {
                allFeatures = true
            }
        }
    }
}
lspconfig.ts_ls.setup({
    on_attach = on_attatch,
    capabilities = capabilities,
})
lspconfig.quick_lint_js.setup({
    on_attach = on_attatch,
    capabilities = capabilities,
})
lspconfig.pylyzer.setup({
    on_attach = on_attatch,
    capabilities = capabilities,
})
