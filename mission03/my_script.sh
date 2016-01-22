eval $(boot2docker shellinit);

#build image of server web UBUNTU with docker file
docker build -t share:v1 .;
#run server ssh
docker run -it -v /Users/Shared:/home/root/share share:v1;
