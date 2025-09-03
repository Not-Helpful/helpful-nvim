-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
--

vim.g.cornelis_agda_prefix = "<M-m>"

return {
	"isovector/cornelis",
	name = "cornelis",
	ft = "agda",
	build = "stack install",
	dependencies = { "neovimhaskell/nvim-hs.vim", "kana/vim-textobj-user" },
	version = "*",
}
