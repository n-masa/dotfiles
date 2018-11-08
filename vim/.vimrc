"init.vimに本体がある
if has('win32')
	source  ~/AppData/Local/nvim/init.vim
else
	source ~/.config/nvim/init.vim
endif