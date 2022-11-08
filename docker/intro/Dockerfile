FROM ubuntu:latest

LABEL "Author"="Dantas"
LABEL "Project"="DevOps"

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /var/www/html
VOLUME /var/log/apache2

ADD nano.tar.gz /var/www/html

RUN apt update && apt install apache2 git -y

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]