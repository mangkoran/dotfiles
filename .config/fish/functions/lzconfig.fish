function lzconfig --wraps='/usr/bin/lazygit --git-dir=$HOME/.cfg/ --work-tree=$HOME'
	/usr/bin/lazygit --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv
end
