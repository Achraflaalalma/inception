#!/bin/bash

useradd -m -d /var/www/html -s /bin/bash ftpuser
echo "${FTP_USER}:${FTP_PASS}" | chpasswd
chown -R ftpuser:ftpuser /var/www/html

vsftpd /etc/vsftpd.conf