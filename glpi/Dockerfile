FROM php:7.4.27-apache
EXPOSE 80
WORKDIR /var/www/html/


RUN curl -s https://deb.nodesource.com/setup_16.x | bash
RUN echo "deb http://ftp.de.debian.org/debian sid main" >> /etc/apt/source.list
RUN apt-get update -y

## APT-GET INSTALL 
RUN apt-get install -y sendmail 
RUN apt-get install -y libpng-dev 
RUN apt-get install -y gettext
RUN apt-get install -y zip
RUN apt-get install -y libzip-dev
RUN apt-get install -y git
RUN apt-get install -y nodejs
RUN apt-get install -y unzip 
RUN apt-get install -y bzip2 
RUN apt-get install -y unrar-free 
RUN apt-get install -y zlib1g-dev 
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y g++;
RUN apt-get install -y libicu-dev
RUN apt-get install -y libldap2-dev
RUN apt-get install -y openssl
RUN apt-get install -y libbz2-dev

## Docker install 
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
RUN docker-php-ext-install gd
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install gd 
RUN docker-php-ext-install exif
RUN docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/
RUN docker-php-ext-install ldap
RUN docker-php-ext-install zip
RUN docker-php-ext-install bz2
RUN docker-php-ext-install opcache

## Clone e instalação
RUN git clone https://github.com/glpi-project/glpi.git .
RUN npm update -g npm
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN mv composer.phar /usr/local/bin/composer
RUN chown www-data:www-data /var/www/html -R
RUN mkdir /var/glpi
RUN mkdir /var/config
RUN chown www-data:www-data /var/glpi -R
RUN chown www-data:www-data /var/config -R
RUN php /var/www/html/bin/console dependencies install
RUN php /var/www/html/bin/console locales:compile
