FROM nginx:latest

RUN apt-get -y update
RUN apt-get install -y nginx

RUN echo "This is my new Docker )=" > /usr/share/nginx/html/index.html

WORKDIR /etc/nginx/conf.d
COPY default.conf .

RUN service nginx restart

EXPOSE 80
