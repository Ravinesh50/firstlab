FROM centos
MAINTAINER ravinesh50135@gmail.com
RUN yum install httpd -y \
zip \
unzip 
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page264/the-card.zip
WORKDIR /var/www/html
RUN unzip the-card.zip
RUN cp -rvf the-card/*
RUN rm -rf the-card the-card.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
