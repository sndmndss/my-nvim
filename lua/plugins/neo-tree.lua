return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"kyazdani42/nvim-web-devicons",  -- Убедитесь, что используете правильное имя пакета
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,  -- Показывать скрытые файлы
					hide_gitignored = false
				}
			}
		})
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle=true left<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	end,
} 
