local lsp = require("lsp-zero").preset({
	name = "minimal",
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

local cmp = require("cmp")
local luasnip = require("luasnip")

lsp.setup_nvim_cmp({
	preselect = "none",
	completion = {
		completeopt = "menu,menuone,noinsert,noselect",
	},
	mapping = lsp.defaults.cmp_mappings({
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-p>"] = cmp.mapping.select_prev_item({ select = true }),
		["<C-n>"] = cmp.mapping.select_next_item({ select = true }),
		["<C-u>"] = cmp.mapping.scroll_docs(-5),
		["<C-d>"] = cmp.mapping.scroll_docs(5),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
})

lsp.on_attach(function(client, bufnr)
	if client.name == "lua_ls" or client.name == "tsserver" then
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end

	local opts = { noremap = true, silent = true, buffer = bufnr }
	local bind = vim.keymap.set

	bind("n", "gd", vim.lsp.buf.definition, opts)
	bind("n", "K", vim.lsp.buf.hover, opts)
	bind("n", "<leader>od", vim.diagnostic.open_float, opts)
	bind("n", "<leader>sd", vim.diagnostic.setloclist, opts)
	bind("n", "[d", vim.diagnostic.goto_next, opts)
	bind("n", "]d", vim.diagnostic.goto_prev, opts)
	bind("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	bind("n", "<leader>rn", vim.lsp.buf.rename, opts)
	bind("n", "<leader>fd", vim.lsp.buf.format, opts)
end)

lsp.setup()
