if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr -a L --position anywhere --set-cursor "% | less"
    abbr -a !! --position anywhere --function last_history_item
end
