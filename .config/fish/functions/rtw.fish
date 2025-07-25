function rtw --description 'Reboot into the Windows boot entry dynamically'
    set windows_entry (efibootmgr | grep -i 'Windows' | awk '{print $1}' | sed 's/Boot//g; s/\*//g')

    if test -z "$windows_entry"
        echo "Windows boot entry not found!"
        return 1
    end

    sudo efibootmgr --bootnext $windows_entry
    sudo reboot now
end
