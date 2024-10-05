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

    Windows Terminal

        Ubuntu - .zshrc
        Git Bash - .bashrc
        Theme - Catppuccin Mocha
        JetBrainsMono Nerd Font

    IDEs and Code Editors
    Discord & Spotify

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

    NvChad - Open in CMD for IDE

# [Scoop](https://scoop.sh/) - Windows Package Manager

    Open a PowerShell terminal (version 5.1 or later) and from the PS C:\> prompt, run:

`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

`Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression`

    Manage packages - scoop
    Search packages - scoop.sh

    Always add respective Bucket for Package

## Compilers Using Scoop

Oracle JDK -> `scoop install java/oraclejdk` <br>
NodeJS -> `scoop install main/nodejs` <br>
Go -> `scoop install main/go` <br>
Python -> `scoop install main/python` <br>
MinGW -> `scoop install main/mingw` <br>
Rust -> `scoop install main/rustup-gnu` <br>
Neovim -> `scoop install main/neovim` <br>

## Uninstall Scoop

    scoop uninstall scoop
    Delete ~/scoop directory

