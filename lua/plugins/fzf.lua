return {
	{
		"junegunn/fzf",
		lazy = false,
		priority = 1001,
		build = function()
			vim.g.__fzf_installing = true
		end,
		config = function()
			if vim.g.__fzf_installing then
				vim.fn["fzf#install"]()
				vim.notify("fzf was installed!", vim.log.levels.INFO)
			end
		end,
	},
	{
		"junegunn/fzf.vim",
		dependencies = { "junegunn/fzf" },
		lazy = false,
		priority = 1000,
		keys = {
			{ "]f", "<cmd>Files<cr>", desc = "Search file (fzf)" },
			{ "]w", "<cmd>Windows<cr>", desc = "Search windows (fzf)" },
		},
	}
}