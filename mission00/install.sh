echo "\033[31m-------- Install  Boot2docker-vm ---------\n"
boot2docker init;
echo "\033[0m";
echo "\033[31m---------- Starting Boot2docker ----------\n"
boot2docker start;
echo "\033[0m";
echo "\033[32m--------- Boot2docker shellinit. ---------\n"
eval "$(boot2docker shellinit)";
echo "\033[0m";
echo "\033[36; 1m-------------- Docker Infos --------------\n"
docker info;
echo "\033[0m";