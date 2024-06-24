require('neo-tree').setup{
	sources = {
		'filesystem',
		'buffers',
		'git_status',
		'document_symbols'
	},

	window = {
		mappings = {
			['e'] = 'open',
		}
	}
}
