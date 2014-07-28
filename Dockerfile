FROM polinux/confluence:latest
MAINTAINER Przemyslaw Ozgo <linux@ozgo.info>

RUN mkdir -p /data/install
ADD config/ /data/install

RUN mv /data/install/confluence.cfg.xml /var/atlassian/application-data/confluence/confluence.cfg.xml  

ADD supervisord.conf /etc/supervisord.d/confluence .conf
