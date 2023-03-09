sleep 1
#start services
service ssh start


while :; do :; done & kill -STOP $! && wait $!