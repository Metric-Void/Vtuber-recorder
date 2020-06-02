#!/bin/sh
. /etc/profile
. ~/.bash_profile
source /etc/profile
find /home/allen/recorder/Vtuber-recorder/savevideo/  -maxdepth 5 -name "*.ts"  -type f -mmin +720 -exec ls -l {} \; > "/home/allen/recorder/Vtuber-recorder/log/del12h$(date +"[%Y-%m-%d-%H]").log" 2>&1
find /home/allen/recorder/Vtuber-recorder/savevideo/  -maxdepth 5 -name "*.ts"   -type f -mmin +720 -delete; >> "/home/allen/recorder/Vtuber-recorder/log/del12h$(date +"[%Y-%m-%d-%H]").log" 2>&1
find /home/allen/recorder/Vtuber-recorder/savevideo/  -maxdepth 5 -name "*.ts.*"  -type f -mmin +720 -exec ls -l {} \; >> "/home/allen/recorder/Vtuber-recorder/log/del12h$(date +"[%Y-%m-%d-%H]").log" 2>&1
find /home/allen/recorder/Vtuber-recorder/savevideo/  -maxdepth 5 -name "*.ts.*"  -type f -mmin +720 -delete; >> "/home/allen/recorder/Vtuber-recorder/log/del12h$(date +"[%Y-%m-%d-%H]").log" 2>&1
find /home/allen/recorder/Vtuber-recorder/savevideo/  -maxdepth 5 -name "*.info.txt"  -type f -mmin +720 -exec ls -l {} \; >> "/home/allen/recorder/Vtuber-recorder/log/del12h$(date +"[%Y-%m-%d-%H]").log" 2>&1
find /home/allen/recorder/Vtuber-recorder/savevideo/  -maxdepth 5 -name "*.info.txt"  -type f -mmin +720 -delete; >> "/home/allen/recorder/Vtuber-recorder/log/del12h$(date +"[%Y-%m-%d-%H]").log" 2>&1
find /home/allen/recorder/Vtuber-recorder/ -maxdepth 5 -name "*.log*"  -type f -mmin +12000 -exec ls -l {} \; >> "/home/allen/recorder/Vtuber-recorder/log/del12h$(date +"[%Y-%m-%d-%H]").log" 2>&1
find /home/allen/recorder/Vtuber-recorder/ -maxdepth 5 -name "*.log*"  -type f -mmin +12000 -delete; >> "/home/allen/recorder/Vtuber-recorder/log/del12h$(date +"[%Y-%m-%d-%H]").log" 2>&1
pip3 install  --upgrade youtube-dl
pip3 install  --upgrade you-get
pip3 install  --upgrade streamlink




