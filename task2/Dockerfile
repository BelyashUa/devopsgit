FROM nginx:latest

RUN apt-get -y update
RUN apt-get install -y nginx

RUN echo "This is my Docker )=" > /usr/share/nginx/html/index.html

WORKDIR /etc/nginx/sites-available
COPY default .

RUN service nginx restart

EXPOSE 80
