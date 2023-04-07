local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local bind = vim.keymap.set

bind("n", "<leader>af", mark.add_file)
bind("n", "<C-e>", ui.toggle_quick_menu)

bind("n", "<A-1>", function()
	ui.nav_file(1)
end)
bind("n", "<A-2>", function()
	ui.nav_file(2)
end)
bind("n", "<A-3>", function()
	ui.nav_file(3)
end)
bind("n", "<A-4>", function()
	ui.nav_file(4)
end)
