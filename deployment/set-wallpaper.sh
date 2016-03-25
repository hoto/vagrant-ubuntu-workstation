 #!/usr/bin/env bash
#
# export DISPLAY=:0.0
#  gnome-session
#
# echo 'Current wallpaper:'
# gsettings get org.gnome.desktop.background picture-uri
#
# echo 'Gnome session version:'
# gnome-session --version
#
# echo 'Setting wallpaper 1...'
# gsettings set org.gnome.desktop.background picture-uri file:///vagrant/wallpapers/wallpaper.jpg
#
# echo 'Setting wallpaper 2...'
# gsettings set org.gnome.desktop.background picture-uri "file:///vagrant/wallpapers/wallpaper.jpg"
#
# echo 'Setting wallpaper 3...'
# gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/Water_web_by_Tom_Kijas.jpg
#
# echo 'Setting wallpaper 4...'
# gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/Water_web_by_Tom_Kijas.jpg'
#
# echo 'Setting wallpaper 5...'
# gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/Water_web_by_Tom_Kijas.jpg"
#
# echo 'Current wallpaper:'
# gsettings get org.gnome.desktop.background picture-uri
#
# echo 'Wallpaper set!'



# echo 'Current wallpaper:'
# gsettings get org.gnome.desktop.background picture-uri
#
# echo 'Writing ~/.xinitrc file'
#
# cat >~/.xinitrc <<EOL
# gnome-terminal &
# xsetbg -fullscreen /usr/share/backgrounds/Water_web_by_Tom_Kijas.jpg &
# exec gnome-session
# EOL
#
# echo 'Content of ~/.xinitrc:'
# cat ~/.xinitrc
#
#
# echo 'Current wallpaper:'
# gsettings get org.gnome.desktop.background picture-uri
