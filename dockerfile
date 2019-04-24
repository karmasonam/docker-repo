FROM centos:latest
MAINTAINER Karma
RUN yum -y install httpd git && git clone https://github.com/karmasonam/docker-repo.git  /var/www/html/

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]