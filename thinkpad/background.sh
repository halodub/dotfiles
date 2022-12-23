urxvt -bl -geometry 235x86-0+0 -e sh -c "sleep 1;wmctrl -r sh -b add,skip_taskbar;wmctrl -r sh -t -1; btop"
sleep 3
urxvt -bl -geometry 85x86+0+0 &
sleep 3
wmctrl -r urxvt -b add,skip_taskbar
