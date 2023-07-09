#!/bin/bash

i=0
echo "Do you want to add to the exsiting loop? [Y/n]"
read ans

if [ $ans == "Y" ]; then
echo "What wallpaper would you like to add to the changer? ENTER PATH EX. /usr/home/Your_wallpaper_here.jpg"
read Wallpaper
fi

# Array 

if [ i gt 0 ]; then
ARRAY=()
ARRAY+=('$Wallpaper')
i=$((i + 1))
fi

File_Dir=/usr/home/Background-Changer/
if [ ! -f $File_Dir ]; then
  cd $File_Dir
  touch Bg.txt
fi

if [ $ARRAY =! Bg.txt ]; then
echo $ARRAY >> Bg.txt
cd
fi

echo "If you want to stop at any time use [CTRL+S]"
while :
do
for a in $ARRAY
do
wait 5
gsettings set org.gnome.desktop.background picture-uri "$ARRAY"
done
done
