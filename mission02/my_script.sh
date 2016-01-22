eval $(boot2docker shellinit);

#build image of server web UBUNTU with docker file
docker build -t ssh-connect/login:v1 .;
#run server ssh
docker run -d -P -p 42:42 ssh-connect/login:v1;
echo "\033[32mSSH Connection With espiroux account :\n\033[0m";
ssh espiroux@192.168.59.105 -p 42;
