FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install apache2
ADD index.html /var/www/html
EXPOSE 81
CMD /usr/sbin/apache2ctl -D FOREGROUND
