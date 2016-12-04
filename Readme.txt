##############################################################################
## Userscripts                                                              ## 
##############################################################################

- Author:           Kim Depypere 
- OS platform:      Arch Linux 
- Linux kernel:     Linux 4.8.11-1-ARCH (December 2016)
- Startdate:        4 december 2016 

=============
Installation 
=============

Use the installation script within the "installation"-folder. 

===============
Script content 
===============

Dotfiles:
---------
- install .vimrc
- install .bashr
- setup symbolic link to .vimrc
- copy .bashrc to homedir

Execscripts: 
------------
- install execscripts (install to execute without any './')

    - syncscripts       -   syncing git scripts to my repo (github)
    - disableservice    -   disable a systemd service (systemd)
    - pacupdate         -   Update the system via pacman (systemd)
    - showservices      -   Show all running services (systemd)

Installation: 
-------------
    - installuserscripts    -   installation-script for this (userscripts) repo

======
Notes 
======
Here I will keep some notes for future reference.  

======
Tree
======

.
|-- Readme.txt
|-- dotfiles
|-- execscripts
|   |-- disableservice
|   |-- ksync
|   |-- pacupdate
|   `-- showservices
|-- installation
|   |-- installDirs
|   |-- installSoftware
|   `-- installUserscripts
`-- notes
    |-- empty.info
    |-- networking.info
    `-- systemd.info

##############################################################################