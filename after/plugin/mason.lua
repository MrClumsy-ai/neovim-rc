-- MASON
require("mason").setup()
require("mason-lspconfig").setup{
    ensure_installed = { "lua_ls", "rust_analyzer" }
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

-- local lsp = require("lsp-zero")
-- local cmp = require("cmp")
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- local cmp_mappings = lsp.defaults.cmp_mappings({
--     ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
--     ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
--     ["<C-y>"] = cmp.mapping.confirm({ select = true }),
--     ["<C-Space>"] = cmp.mapping.complete(),
-- })
-- lsp.set_preferences({
--     sign_icons = {}
-- })
-- lsp.setup_nvim_cmp({
--     mapping = cmp_mappings
-- })
-- lsp.on_attatch(function(client, bufnr)
--     print("help")
--     local opts = {buffer = bufnr, remap = false}
--     vim.keymap.set("n", "gd", function () vim.lsp.buf.definition() end, opts)
--     vim.keymap.set("n", "K", function () vim.lsp.buf.hover() end, opts)
--     vim.keymap.set("n", "<leader>vws", function () vim.lsp.buf.workspace_symbol() end, opts)
--     vim.keymap.set("n", "<leader>vd", function () vim.diagnostic.open_float() end, opts)
--     vim.keymap.set("n", "[d", function () vim.diagnostic.goto_next() end, opts)
--     vim.keymap.set("n", "]d", function () vim.diagnostic.goto_prev() end, opts)
--     vim.keymap.set("n", "<leader>vca", function () vim.lsp.buf.code_action() end, opts)
--     vim.keymap.set("n", "<leader>vrr", function () vim.lsp.buf.references() end, opts)
--     vim.keymap.set("n", "<leader>vrn", function () vim.lsp.buf.rename() end, opts)
--     vim.keymap.set("i", "<C-h>", function () vim.lsp.buf.signature_help() end, opts)
-- end)
-- lsp.setup()
