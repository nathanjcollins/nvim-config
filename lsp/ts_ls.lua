return {
	init_options = {
		hostInfo = 'neovim',
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location =
				"/users/nathancollins/repos/cap/cap-portal/src/node_modules/@vue/language-server",
				languages = { "javascript", "typescript", "vue" },
			},
		},
	},
	cmd = { 'typescript-language-server', '--stdio' },
	filetypes = {
		'javascript',
		'javascriptreact',
		'javascript.jsx',
		'typescript',
		'typescriptreact',
		'typescript.tsx',
		'vue',
	},
	root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
}
