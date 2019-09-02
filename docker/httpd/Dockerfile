FROM ubuntu:latest
MAINTAINER Vladimir Stovpovoy

RUN apt-get update
RUN apt-get check
RUN apt-get dist-upgrade -y

RUN apt-get install -y apache2

WORKDIR /usr/local/apache2/conf/
COPY httpd.conf .
WORKDIR /var/www/cgi-bin/
COPY ./page /var/www/cgi-bin/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]


