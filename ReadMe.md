# Arch Linux - nobios script

    setfont ter-132b # HiDPI Display
    iwctl --passphrase [password] station wlan0 connect [network]
    
    bash <(curl -s https://raw.githubusercontent.com/theweki/os/refs/heads/main/arch/install/nobios.sh)

### Post nobios

    rustup default stable
    gh auth login

    Gnome Extensions - kstatusappindicatornotifier userthemes dashtodock blurmyshell clipboardindicator

    Download Idea Ultimate from official tarball

