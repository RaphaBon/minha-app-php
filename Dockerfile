FROM php:8.2-apache
LABEL maintainer="raphaelalvares"
RUN apt-get update && apt-get upgrade -y && apt-get clean
WORKDIR /var/www/html
COPY src/ .
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
