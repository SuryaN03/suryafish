#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo""
echo '
      ____  _   _ ______   __ _      _   _ _____
     / ___|| | | |  _ \ \ / // \    | \ | |___ /
     \___ \| | | | |_) \ V // _ \   |  \| | |_ \
      ___) | |_| |  _ < | |/ ___ \  | |\  |___) |
     |____/ \___/|_| \_\|_/_/   \_\ |_| \_|____/'|lolcat
echo -e "${GREEN}           Tools for Hacking by Surya N3 ${NC}"
echo ""
echo -e "${YELLOW} INSTALL MATERIAL | HACKTRONIAN | THANKS FOR MR SAGE ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${GREEN}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install Hacktronian, CTRL+C to Exit.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/hacktronian"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/hacktronian"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory hacktronian Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/Surya1N3/suryan3hack.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/suryan3.py" '${1+"$@"}' > suryan3;
chmod +x suryan3;
sudo cp suryan3 /usr/bin/;
rm hacktronian;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by typing hacktronian !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi
