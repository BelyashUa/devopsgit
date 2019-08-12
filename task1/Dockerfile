FROM alpine:latest

RUN apk update 
RUN apk add --no-cache git
RUN mkdir /home/git/
WORKDIR /home/git
RUN git init 
COPY git.sh . / 
RUN chmod +x /git.sh
ENTRYPOINT ["/git.sh"]


