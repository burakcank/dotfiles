# my-dotfiles

## Setup
```sh
git init --bare $HOME/.my-dotfiles
alias mydotfiles='git --git-dir=$HOME/.my-dotfiles/ --work-tree=$HOME'
mydotfiles remote add origin git@github.com:burakcank/dotfiles.git
```

## Replication
```sh
git clone --separate-git-dir=$HOME/.my-dotfiles https://github.com/burakcank/dotfiles.git my-dotfiles-tmp
rsync --recursive --verbose --exclude '.git' my-dotfiles-tmp/ $HOME/
rm --recursive my-dotfiles-tmp
```

## Configuration
```sh
mydotfiles config status.showUntrackedFiles no
mydotfiles remote set-url origin git@github.com:burakcank/dotfiles.git
```

## Usage
```sh
mydotfiles status
mydotfiles add .gitconfig
mydotfiles commit -m 'Add gitconfig'
mydotfiles push
```
