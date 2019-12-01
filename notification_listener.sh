echo "running the listener script..."
dbus-monitor "interface='org.freedesktop.Notifications'" | grep --line-buffered "string" | grep --line-buffered -e method -e ":" -e '""' -e urgency -e notify -v | grep --line-buffered '.*(?=string)|(?<=string).*' -oPi | grep --line-buffered -v '^\s*$' | grep --line-buffered '"[^"]*"' | xargs -I '{}' /bin/bash /your/path/play_sound.sh {}
