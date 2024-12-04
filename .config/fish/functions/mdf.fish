function mdf --wraps=git
    git --git-dir=$HOME/.my-dotfiles/ --work-tree=$HOME $argv
end
