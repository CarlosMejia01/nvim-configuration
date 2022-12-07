local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	ensure_installed = {
		"tsx",
		"toml",
		"fish",
		"php",
		"json",
		"yaml",
		"swift",
		"css",
		"html",
		"lua",
		"bash",
		"gitcommit",
		"git_rebase",
		"gitattributes",
		"gitignore",
		"graphql",
		"http",
		"java",
		"javascript",
		"json5",
		"pug",
		"python",
		"rust",
		"ruby",
		"scss",
		"sql",
		"typescript",
		"vim",
		"vue",
		"yaml",
	},
})

--local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
--parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
