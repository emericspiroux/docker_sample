./clean_container.sh 2> /dev/null;
#build image of server web UBUNTU with docker file
docker build -t web-serv/shared:v1 -f Dockerfile .;
#run le server apache
docker run -d -p 7070:80 -v /Users/Shared:/var/www web-serv/shared:v1 /usr/sbin/apache2ctl -D FOREGROUND;
