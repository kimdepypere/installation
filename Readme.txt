##############################################################################
## Userscripts                                                              ## 
##############################################################################

- Author:           Kim Depypere 
- OS platform:      Arch Linux 
                    Raspbian 
- Linux kernel:     Linux 4.8.11-1-ARCH (December 2016) 
                    Linux raspberrypi 3.18.10v7
- Startdate:        22 december 2016 


==============================================================================
== Known bugs
==============================================================================

- plugins aren't installed correctly via github

==============================================================================
== Description
==============================================================================

These userscripts are a way of implementing a user structure within a
ARCH linux environment. Use in other distro's will normally also work. 

These scripts can make your user directories more organised than before. 
It is really one way of seting up a workable environment on a newly 
installed linux system. 

The goal is to provide some scripts that can be used when trying a new
installation of a linux distro, without having to remake every directory
or modification to your homedir dotfiles manually. 


WARNING: this is still an ongoing project. 

==============================================================================
== Directory structure
==============================================================================
.
├── BACKUP
├── dotfiles
│   ├── arch
│   ├── bash
│   └── vim
├── execscripts
│   ├── disableservice
│   ├── local
│   ├── pacupdate
│   ├── showservices
│   ├── sync
│   │   ├── ksync
│   │   ├── ksyncGit
│   │   └── ksyncProfile
│   └── vimswitch
│       └── vimgo
├── installation
│   ├── install
│   └── installscripts
│       ├── installDirs
│       ├── installSoftware
│       ├── installVimGoLang
│       ├── installVimPathogenPlugins
│       ├── installVimPluginManager
│       ├── installVimRuby
│       └── installVimThemes
├── notes
│   ├── Arch
│   │   ├── networking.info
│   │   ├── pacman.info
│   │   └── systemd.info
│   ├── empty.info
│   ├── golang
│   │   └── links.info
│   └── vim
│       ├── plugin.info
│       └── shortcuts.info
├── Readme.txt
└── Updates.log

15 directories, 24 files

==============================================================================
== Installation 
==============================================================================

Use the installation script (install) within the "installation"-folder. 

Note: 
- to use vim-go, execute the following in vim: ":GoInstallBinaries"

==============================================================================
== Script content (outdated: update coming soon)
==============================================================================

Dotfiles:
---------
- install .vimrc
- install .bashr
- setup symbolic link to .vimrc
- copy .bashrc to homedir

Execscripts: 
------------
- install execscripts (install to execute without any './')

    - ksync             -   syncing git scripts and updating profile syncs 
    - disableservice    -   disable a systemd service (systemd)
    - pacupdate         -   Update the system via pacman (systemd)
    - showservices      -   Show all running services (systemd)

Installation: 
-------------
    - installuserscripts  -   installation-script for this (userscripts) repo


==============================================================================
== Notes 
==============================================================================

Here I will keep some notes for future reference.  

Information: 
------------
- networking            -   Network manager information 
- pacman                -   pacman information
- systemd               -   Systemd information 

Extra:
------
- empty                 -  Empty template to make new information sheets


##############################################################################
