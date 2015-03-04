sudo docker stop postfix
sudo docker rm postfix
./build.sh
./start.sh
sudo docker exec postfix mail -s hello christian.linder@gmail.com /etc/hostname
sleep 1
sudo docker exec postfix tail /var/log/mail.log
