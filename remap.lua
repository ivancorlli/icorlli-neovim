local api = vim.api

-- Map Leader as "Space"
vim.g.mapleader = " "

-- Set Searcher
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)

-- Function for mapping
local map = function(mode,lhs,rhs,opts)
	local options = {noremap = true,silent=true}
	if opts then
		options = vim.tbl_extended('force',options,opts)
	end
	api.nvim_set_keymap(mode,lhs,rhs,options)
end

------------------------------- Create Mappings -------------------------------------------------------------
-- Disable arrows
map('','<up>','<nop>')
map('','<down>','<nop>')
map('','<right>','<nop>')
map('','<left>','<nop>')

-- Disable escape
map('','<ESC>','<nop>')

-- Close inster mode with jk
map('i','jk','<ESC>')

