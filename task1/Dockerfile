FROM alpine:latest

RUN apk update 
RUN apk add --no-cache git
RUN mkdir /home/git/
WORKDIR /home/git
RUN git init 
ENTRYPOINT ["git", "clone"]


