FROM ubuntu:12.04
MAINTAINER Emeric SPIROUX
RUN apt-get update
RUN apt-get install -y apache2 nano vim
RUN echo "ServerName localhost">>/etc/apache2/apache2.conf;
ENV HOSTNAME="42BorntoCode";
COPY ./www/ /var/www/
WORKDIR var/www/
