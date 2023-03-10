# nuevo usuario
useradd --password $HASH $USER 
sed -i 's/ELUSER/$USER'/g "/etc/ssh/sshd_config"

# dejamos al usuario sin home
usermod -d "" $USER

#
mkdir -p /sftp/subida

sleep 1
#start services
service ssh start
service ssh restart

while :; do :; done & kill -STOP $! && wait $!