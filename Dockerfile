FROM php:7.2-fpm-stretch
COPY info.php /usr/share/nginx/html/
#COPY ./wordpress /usr/share/nginx/html/
RUN apt-get update -y
#RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql
#RUN apt-get install -y libcurl4-openssl-dev ssh nano pkg-config libssl-dev
RUN apt-get update && \
    apt-get install --assume-yes gpg libdbd-mysql-perl libapache2-mod-fcgid apache2 wget locales less gettext
RUN service php:7.2-fpm-stretch restart
