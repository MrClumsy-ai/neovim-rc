local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = {"lua", "javascript", "c", "rust"},
	sync_install = false,
    auto_install = true,
	highlight = {
        enable = true,
		additional_vim_regex_highlighting = false,
	}
})
