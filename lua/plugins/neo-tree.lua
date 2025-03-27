return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		lazy = false,
		priority = 1000,
		keys = {
			{ "<C-t>", "<cmd>Neotree focus<cr>", desc = "NeoTree Focus" },
		},
		opts = {},
	}
}