FROM ubuntu:22.04

RUN apt update && apt -y dist-upgrade && \
        apt install -y nginx certbot

RUN echo "nginx start"
COPY ./config/* /etc/nginx/site-enabled/
CMD tail -f /dev/null

