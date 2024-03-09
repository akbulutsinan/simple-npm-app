FROM ubuntu:20.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install apache2 -y
COPY build/* /var/www/public_html/
EXPOSE 80