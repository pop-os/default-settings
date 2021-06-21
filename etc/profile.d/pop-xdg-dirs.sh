# Add ~/.local/share to XDG_DATA_DIRS
local_share_path=/home/$USER/.local/share
case ":$XDG_DATA_DIRS:" in
    (*":$local_share_path:"*) :;;
    (*":$local_share_path/:"*) :;;
    (*) export XDG_DATA_DIRS=${local_share_path}:${XDG_DATA_DIRS};;
esac
