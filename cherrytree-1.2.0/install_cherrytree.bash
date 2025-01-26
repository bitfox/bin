#!/bin/bash
dnf -y install gtkmm30 gtksourceview4 gspell libxml++ fribidi sqlite pangomm curl uchardet fmt spdlog vte291
wget https://github.com/bitfox/bin/raw/refs/heads/main/cherrytree-1.2.0/cherrytree -O /usr/local/sbin/cherrytree-1.2.0
chown root:root /usr/local/sbin/cherrytree-1.2.0
chmod 755 /usr/local/sbin/cherrytree-1.2.0
cat <<-EOF > shortcut
[Desktop Entry]
Version=1.0
Type=Application
Name=Cherrytree
Exec=/usr/local/sbin/cherrytree-1.2.0
Categories=GNOME;GTK;Core;Documentation;Utility;
Terminal=false
StartupNotify=true
Icon=applications-system-symbolic
EOF
sudo mv shortcut /usr/share/applications/cherrytree-1.2.0.desktop
sudo chmod 644 /usr/share/applications/cherrytree-1.2.0.desktop
/usr/local/sbin/cherrytree-1.2.0
