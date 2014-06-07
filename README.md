Project-4
=========

CS111 Project-4
unpack .tgz file and 
run ./install.sh

    if there is an permission error
    run chmod +x install.sh

reboot system and choose (2) Start Custum MINIX 3

run make in directory that you unpacked in and you can run metacat and metatag

usage:

Metatag and cat are just executables so you must run like:

./metatag myfile "this is my tag"
./metacat myfile

unfortunately, files must have some characters in them for metatag to work, 
it will not work on a completely empty file 
