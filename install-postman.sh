mkdir -p ~/bin/postman
cd ~/bin/postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman-tar
tar -xzf postman-tar
rm -rf postman-tar
echo "[Desktop Entry]" >> postman.desktop.tmp
echo "Encoding=UTF-8" >> postman.desktop.tmp
echo "Version=1.0">> postman.desktop.tmp
echo "Name=Postman" >> postman.desktop.tmp
echo "Comment=Postman Native App" >> postman.desktop.tmp
echo "Exec=/home/$USER/bin/postman/Postman/Postman -- %u" >> postman.desktop.tmp
echo "Icon=/home/$USER/bin/postman/Postman/app/resources/app/assets/icon.png" >> postman.desktop.tmp
echo "Terminal=false" >> postman.desktop.tmp
echo "StartupWMClass=postman" >> postman.desktop.tmp
echo "Type=Application" >> postman.desktop.tmp
echo "Categories=Network" >> postman.desktop.tmp
echo "MimeType=x-scheme-handler/tg;" >> postman.desktop.tmp
echo "X-Desktop-File-Install-Version=0.22" >> postman.desktop.tmp
mv postman.desktop.tmp postman.desktop
cp postman.desktop ~/.local/share/applications/.
