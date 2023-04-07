-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require("telescope").setup({
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")

local builtin = require("telescope.builtin")
local bind = vim.keymap.set

local opt = require("telescope.themes").get_dropdown({ previewer = false })

bind("n", "<leader>ff", function()
	builtin.find_files(opt)
end, {})
bind("n", "<leader>fr", function()
	builtin.oldfiles(opt)
end, {})
bind("n", "<leader>gf", function()
	builtin.git_files(opt)
end, {})
bind("n", "<leader>gs", function()
	builtin.git_status(opt)
end, {})
bind("n", "<leader>fg", function()
	builtin.live_grep(opt)
end, {})
bind("n", "<leader>fb", function()
	builtin.buffers(opt)
end, {})
