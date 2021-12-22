# Enables application icons to appear
if command -v nix-env > /dev/null; then
  DEFAULT_PROFILE=/nix/var/nix/profiles/default/share
  USER_PROFILE=/nix/var/nix/profiles/per-user/${USER}/profile/share
  export XDG_DATA_DIRS=${DEFAULT_PROFILE}:${USER_PROFILE}:${XDG_DATA_DIRS}
fi
