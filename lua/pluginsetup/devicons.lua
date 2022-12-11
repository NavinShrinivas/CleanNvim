require'nvim-web-devicons'.setup {
 color_icons = true;
 default = true;
}

if require'nvim-web-devicons'.has_loaded()==false then
	print("nvim web devicons not loaded!")
	return
end
require'nvim-web-devicons'.has_loaded()
