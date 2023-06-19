mkdir -p ~/.config/freerdp
echo $KNOWN_HOSTS > ~/.config/freerdp/known_hosts2 

Xvfb $DISPLAY -screen 0 $DISPLAY_SETTINGS &
x11vnc -display "$DISPLAY" -bg -nopw -listen 0.0.0.0 -xkb &
remmina -c $CONNECT_URL
