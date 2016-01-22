FROM ubuntu:12.04
MAINTAINER Emeric SPIROUX
RUN apt-get update
RUN apt-get install -y whois
RUN mkdir /home/espiroux
RUN useradd --password $(mkpasswd imagoodman) -d /home/espiroux espiroux
RUN apt-get install -y openssh-server daemontools
RUN apt-get install -y nano vim
RUN mkdir /home/espiroux/.ssh
RUN touch /home/espiroux/.ssh/authorized_keys
COPY /assets/id_dsa.pub /
RUN cat /id_dsa.pub >> /home/espiroux/.ssh/authorized_keys
COPY ./assets/id_dsa.pub /etc/ssh/
COPY ./assets/sshd_config /etc/ssh/sshd_config
ENV HOSTNAME="42BorntoCode";
RUN mkdir -p /etc/services/sshd /var/run/sshd
RUN echo "#!/bin/bash\nexec /usr/sbin/sshd" > /etc/services/sshd/run
RUN chmod +x /etc/services/sshd/run
EXPOSE 42
ENTRYPOINT ["/usr/bin/svscan", "/etc/services/"]
