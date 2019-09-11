FROM centos:latest 
MAINTAINER  "satishchennu@gmail.com"
LABEL description="A basic Apache container on RHEL 7"
RUN yum -y install httpd 
COPY index.html /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
