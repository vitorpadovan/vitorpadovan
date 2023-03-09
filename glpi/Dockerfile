FROM php:7.4.27-apache
EXPOSE 80
WORKDIR /var/www/html/
RUN curl -s https://deb.nodesource.com/setup_16.x | bash
RUN echo "deb http://ftp.de.debian.org/debian sid main" >> /etc/apt/source.list
RUN apt-get update -y && apt-get install -y sendmail libpng-dev 
RUN apt-get install gettext -y
RUN apt-get install zip -y
RUN apt-get install git -y
RUN apt-get install nodejs -y
# RUN apt-get install npm -y
RUN apt-get update && \
    apt-get install -y \
    zlib1g-dev 
RUN apt-get install -y zlib1g-dev libicu-dev g++ \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl
RUN docker-php-ext-install gd
# RUN docker-php-ext-install zip
# RUN docker-php-ext-install mbstring
RUN docker-php-ext-install mysqli
RUN git clone https://github.com/glpi-project/glpi.git .
RUN npm update -g npm
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN mv composer.phar /usr/local/bin/composer
RUN php /var/www/html/bin/console dependencies install
RUN php /var/www/html/bin/console locales:compile
