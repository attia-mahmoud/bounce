apt-get install proftpd
echo "/bin/false" >> /etc/shells
cd /home
mkdir FTP-shared
useradd userftp -p test -d /home/FTP-shared -s /bin/false
cd /home/FTP-shared/
mkdir download
mkdir upload
cd /home
chmod 755 FTP-shared
cd FTP-shared
chmod 755 download
chmod 777 upload
cp proftpd.conf /etc/proftpd
service proftpd start
