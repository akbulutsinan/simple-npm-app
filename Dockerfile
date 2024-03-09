FROM ubuntu:20.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install apache2 apache2-utils -y
COPY build/* /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
