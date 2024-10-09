# Setup

    Flash Win11 ISO & oobe\bypassnro
    Update System

    Update Apps through Store

    Debloat Windows

        Apps
        Start Menu
        Taskbar
        App Execution Aliases

    Configure Browser
    
# Apps

    Git
    
    VSCode
    IntelliJ IDEA Ultimate Edition
    Postman
    MongoDBCompass
    
    Discord
    Spotify
    VLC

    Oracle JDK
    NodeJS
    Go
    Python
    MinGW
    Rust

    Neovim & NvChad

# Configuration

    Settings

    WSL, Ubuntu & Docker Desktop
    ArchWSL

    Windows Terminal

        Ubuntu - .zshrc
        Git Bash - .bashrc
        Theme - Catppuccin Mocha
        JetBrainsMono Nerd Font

    Start Menu

# C:\Compilers

## [Oracle JDK](https://www.oracle.com/in/java/technologies/downloads/)

    JAVA_HOME -> C:\Compilers\JDK

    1 Download x64 Compressed Archive File
    2 Unarchive the file
    3 Move parent directory JAVA_HOME
    
    Path -> %JAVA_HOME%\bin

## [NodeJS](https://nodejs.org/en/download/prebuilt-binaries/current)

    NODE_HOME -> C:\Compilers\Node

    1 Download Archive File
    2 Unarchive the file
    3 Move parent directory NODE_HOME
    
    Path -> %NODE_HOME%

## [Go](https://go.dev/dl/)
    GO_HOME -> C:\Compilers\Go

    1 Download amd64 Archive File
    2 Unarchive the file
    3 Move parent directory GO_HOME
    
    Path -> %GO_HOME%\bin

## [Python](https://www.python.org/downloads/windows/)

    PYTHON_HOME -> C:\Compilers\Python

    1 Download Latest Stable Release 64bit Embeddable Package File
    2 Unarchive the file
    3 Move parent directory PYTHON_HOME
    
    Path -> %PYTHON_HOME%

## [MinGW](https://github.com/niXman/mingw-builds-binaries/releases)

    MINGW_HOME -> C:\Compilers\MinGW

    1 Download Latest Release posix-seh-ucrt Archive File
    2 Unarchive the file
    3 Copy bin\mingw32-make.exe file & paste as bin\make.exe in same directory
    4 Move parent directory MINGW_HOME
    
    Path -> %MINGW_HOME%\bin

## [Rust](https://www.rust-lang.org/tools/install)

    RUSTUP_HOME -> C:\Compilers\Rust\.rustup
    CARGO_HOME -> C:\Compilers\Rust\.cargo

    1 Download 64bit rustup-init.exe file
    2 Make Sure RUSTUP_HOME & CARGO_HOME is set already
    3 Run rustup-init.exe file
    4 Choose Below Options:
        ->  Don't install the prerequisites (if you're targeting the GNU ABI)
        ->  Customize Installation
                Host Triple -> x86_64-pc-windows-gnu
                Toolchain -> stable
                Profile -> default
                Modify Path Variable -> n
        ->  Press ENTER
    
    Path -> %CARGO_HOME%\bin

## [Neovim](https://github.com/neovim/neovim/releases)

    NEOVIM_HOME -> C:\Compilers\Neovim

    1 Download Latest win64 zip file
    2 Unarchive the file
    3 Move parent directory NEOVIM_HOME

    Path -> %NEOVIM_HOME%\bin

## Arch WSL
### [ArchWSL](https://github.com/yuk7/ArchWSL/releases)
### [ArchWSL Docs](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/)

    1 Download Latest Arch.zip file
    2 Unarchive the file and Paste Content to C:\Compilers\Arch
    3 Follow Docs for Setup
    4 Download Arch.png and Save it in C:\Compilers\Arch
    5 Configure ArchWSL windows terminal profile with Arch.png

[NvChad](https://nvchad.com/docs/quickstart/install/) - Open nvim in CMD for IDE

# [Scoop](https://scoop.sh/) - Windows Package Manager

## Install Scoop

Open a PowerShell terminal (version 5.1 or later) and from the PS C:\> prompt, run:

`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser` <br>
`Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression`

## Some Scoop Essential Buckets

`main`
`extras`
`java`

## Some Scoop Packages

`java/oraclejdk`
`main/nodejs`
`main/go`
`main/python`
`main/mingw`
`main/rustup-gnu`
`main/neovim` <br>

`extras/vscode`
`extras/idea-ultimate` <br>

`extras/mongodb-compass`
`extras/postman` <br>

`extras/spotify`
`extras/discord` 
`extras/vlc` <br>

`extras/archwsl` <br>

## Uninstall Scoop

`scoop uninstall scoop`
`rm -r ~/scoop`

