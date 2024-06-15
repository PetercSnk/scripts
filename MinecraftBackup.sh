#!/bin/sh
# for minecraft only backup the world directory
serverdir="GAME DIRECTORY"
backupdir="BACKUP DIRECTORY"
cd $backupdir
mv minecraft-day6.tar.gz minecraft-day7.tar.gz
mv minecraft-day5.tar.gz minecraft-day6.tar.gz
mv minecraft-day4.tar.gz minecraft-day5.tar.gz
mv minecraft-day3.tar.gz minecraft-day4.tar.gz
mv minecraft-day2.tar.gz minecraft-day3.tar.gz
mv minecraft-day1.tar.gz minecraft-day2.tar.gz
mv minecraft-day0.tar.gz minecraft-day1.tar.gz
tar -cpzf $backupdir/minecraft-day0.tar.gz $serverdir



