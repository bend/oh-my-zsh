#!/bin/bash - 
#===============================================================================
#
#          FILE: pacman-disowned.sh
# 
#         USAGE: ./pacman-disowned.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/22/2012 08:18:13 PM CEST
#      REVISION:  ---
#===============================================================================

#!/bin/sh

tmp=${TMPDIR-/tmp}/pacman-disowned-$UID-$$
db=$tmp/db
fs=$tmp/fs

mkdir "$tmp"
trap 'rm -rf "$tmp"' EXIT

pacman -Qlq | sort -u > "$db"

find /bin /etc /lib /sbin /usr \
! -name lost+found \
\( -type d -printf '%p/\n' -o -print \) | sort > "$fs"

comm -23 "$fs" "$db"
