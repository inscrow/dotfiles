function dots --wraps=git
	/usr/bin/git --git-dir=$HOME/dots --work-tree=$HOME $argv;
end
