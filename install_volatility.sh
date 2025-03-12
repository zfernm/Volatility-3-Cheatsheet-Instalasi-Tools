#!/bin/bash

RED="\e[31m"
GREEN="\e[1;32m"
BLUE="\e[1;34m"
MAGENTA="\e[35m"
RESET="\e[0m"

INFO="${MAGENTA}[ INFO ]"
PROSES="${BLUE}[ PROSES ]"
SUCCESS="${GREEN}[ SUCCESS ]"

logo() {
    echo -e "${RED}"
    echo " ######################################################### "
    echo " #                INSTALL TOOLS VOLATILITY3              # " 
    echo " ######################################################### "
    echo " ███████ ███████ ███████ ██████  ███    ██ ███    ███ "
    echo "     ███ ██      ██      ██   ██ ████   ██ ████  ████ "
    echo "   ███   █████   █████   ██████  ██ ██  ██ ██ ████ ██ "
    echo " ███     ██      ██      ██   ██ ██  ██ ██ ██  ██  ██ "
    echo " ███████ ██      ███████ ██   ██ ██   ████ ██      ██ "
    echo -e "${RESET}"
    echo -e "${GREEN} Tools created by ZFERNM X META4SEC ${RESET}"
    echo ""
}

install_dependencies() {
    echo -e "${PROSES} Updating package list..."
    sudo apt update -y

    echo -e "${PROSES} Installing dependencies..."
    sudo apt install -y python3 python3-venv python3-pip git 

    echo -e "${SUCCESS} Dependencies installed!"
}

install_volatility() {
    echo -e "${PROSES} Cloning Volatility 3 repository..."
    git clone https://github.com/volatilityfoundation/volatility3.git
    cd volatility3 || { echo -e "${RED}Failed to enter volatility3 directory!${RESET}"; exit 1; }

    echo -e "${PROSES} Creating Python virtual environment..."
    python3 -m venv venv

    echo -e "${PROSES} Activating virtual environment..."
    source venv/bin/activate

    echo -e "${PROSES} Installing Volatility 3 dependencies..."
    pip install .

    echo -e "${PROSES} Deactivating virtual environment..."
    deactivate

    echo -e "${PROSES} Adding Volatility 3 to PATH..."
    echo 'export PATH="$HOME/volatility3:$PATH"' >> ~/.bashrc
    source ~/.bashrc

    echo -e "${SUCCESS} Volatility 3 installation completed!"
}

logo
install_dependencies
install_volatility

echo -e "${GREEN} Installation complete. You can now run Volatility 3 with:${RESET}"
echo -e "${BLUE}vol.py -h${RESET}"
