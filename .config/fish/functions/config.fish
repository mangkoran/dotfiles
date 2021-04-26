function config -d "Manage dotfiles"
    /usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME $argv
end
