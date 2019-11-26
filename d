## Colors
C='\033[1;36m'
G='\033[1;32m'
R='\033[1;31m'
Y='\033[1;33m'
B='\033[1;34m'
P='\033[1;35m'
RE='\033[0m'
clear
echo -ne $Y"[+] Enter URL"
echo
echo -ne $Y"[+] Enter the name of video"
echo
echo
read -p '>> ' ans
if [ $ans = 1 ]
then
echo -ne $B"[+] Enter the URL of video : "
echo
read -p '>> ' url
echo
echo -ne $G"[+] What do you want to do?"
echo
echo
echo -ne $Y"1) Download video"
echo
echo
echo -ne $Y"2) Read description"
echo
echo
read -p '>> ' do
echo
if [ $do = 1 ]
then
echo -ne $Y"[+] Name the video : "
echo
read -p '>> ' n
echo
termux-setup-storage
echo -ne $Y"[*] Downloading.."
echo
youtube-dl --output /sdcard/"$n.mkv" $url
echo
echo
echo -ne $B"[*] Download completed"
echo
echo -ne $Y"[+] Saved in your Internal Storage"
echo
echo -ne $G"[*] Thank You for using Lemon's downloader!"
echo -ne $RE"."
echo
else
echo
echo -ne $G"[*] Loading description.."
echo
youtube-dl --get-description $url
echo -ne $RE"."
fi
else
echo
echo -ne $B"[+] Enter the name of video : "
echo
echo
read -p '>> ' name
echo
echo
echo -ne $G"[*] What do you want to do?"
echo
echo
echo -ne $Y"1) Download video"
echo
echo
echo -ne $Y"2) Read description"
echo
echo
read -p '>> ' do
echo
if [ $do = 1 ]
then
termux-setup-storage
echo -ne $Y"[+] Name the video : "
echo
read -p '>> ' na
echo
echo -ne $Y"[*] Downloading.."
youtube-dl --output /sdcard/"$na.mkv" ytsearch:"$name"
echo
echo -ne $G"[*] Download completed"
echo
echo -ne $B"[+] Saved in your Internal Storage"
echo
echo -ne $G"[*] Thank You for using Lemon's downloader!"
echo -ne $RE"."
echo
else
echo
echo -ne $G"[*] Loading description.."
echo
youtube-dl --get-description ytsearch:"$name"
echo -ne $RE"."
fi
fi


