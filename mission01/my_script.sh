eval $(boot2docker shellinit);

#build image of server web UBUNTU with docker file
docker build -t hello/world:v42 -f Dockerfile .;
#run le server apache
docker run -d -p 7070:80 hello/world:v42 /usr/sbin/apache2ctl -D FOREGROUND;
docker run -it hello/world:v42 /bin/bash;
