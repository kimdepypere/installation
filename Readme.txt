##############################################################################
## Userscripts                                                              ## 
##############################################################################

- Author:           Kim Depypere 
- OS platform:      Arch Linux 
- Linux kernel:     Linux 4.8.11-1-ARCH (December 2016)
- Startdate:        4 december 2016 


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
|-- Readme.txt
|-- dotfiles
|-- execscripts
|   |-- disableservice
|   |-- pacupdate
|   |-- showservices
|   `-- sync
|       |-- ksync
|       |-- ksyncGit
|       `-- ksyncProfile
|-- installation
|   |-- installDirs
|   |-- installSoftware
|   `-- installUserscripts
`-- notes
    |-- empty.info
    |-- networking.info
    |-- pacman.info
    `-- systemd.info


==============================================================================
== Installation 
==============================================================================

Use the installation script (installUserscripts) within the 
"installation"-folder. 


==============================================================================
== Script content 
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
