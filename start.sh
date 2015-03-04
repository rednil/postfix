sudo docker stop postfix
sudo docker rm postfix
sudo docker run \
-v /etc/hosts:/etc/hosts:ro \
-v /etc/hostname:/etc/hostname:ro \ 
-d \
--name postfix \
rednil/postfix
