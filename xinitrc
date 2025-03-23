inxeoz@debian:~$ cat ~/.xinitrc 

export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus
exec i3
inxeoz@debian:~$ 










