vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")

local timer = vim.loop.new_timer()
timer:start(
	0,
	300000,
	vim.schedule_wrap(function()
		if vim.fn.system("git diff --quiet HEAD") == 0 then
			vim.cmd("Git pull")
		end
	end)
)
