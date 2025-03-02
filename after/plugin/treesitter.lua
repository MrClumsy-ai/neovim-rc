-- TREESITTER
local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = {"lua", "javascript", "c", "rust"},
	sync_install = false,
	highlight = {
		additional_vim_regex_highlighting = false,
	}
})
