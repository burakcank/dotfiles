function mydotfiles --wraps "git" --description 'alias mydotfiles=/usr/bin/git --git-dir=/home/burakcank/.my-dotfiles --work-tree=/home/burakcank'
  /usr/bin/git --git-dir=/home/burakcank/.my-dotfiles --work-tree=/home/burakcank $argv
        
end
