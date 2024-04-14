apt-get install proftpd
echo "/bin/false" >> /etc/shells
cd /home
mkdir FTP-shared
useradd userftp -p test -d /home/FTP-shared -s /bin/false
cd /home/FTP-shared/
mkdir download
mkdir upload
cd /home
sudo chmod 755 FTP-shared
cd FTP-shared
sudo chmod 755 download
sudo chmod 777 upload
rm /etc/proftpd/proftpd.conf
cp proftpd.conf /etc/proftpd
