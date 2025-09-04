call plug#begin()

	" List your plugins here
	Plug 'tpope/vim-sensible'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	Plug 'folke/tokyonight.nvim'

call plug#end()
