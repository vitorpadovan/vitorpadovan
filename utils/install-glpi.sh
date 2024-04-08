#/bin/sh
#wget --no-cache https://raw.githubusercontent.com/vitorpadovan/vitorpadovan/main/utils/install-glpi.sh
wget https://github.com/glpi-project/glpi/releases/download/10.0.14/glpi-10.0.14.tgz
tar -xzf glpi-10.0.14.tgz
cd $(pwd)/glpi
rm -rf /var/www/html/*
mv * /var/www/html
chmod 777 /var/www/html/config -R
chmod 777 /var/www/html/files/ -R
apt-get install php -y;
apt-get install php-mysql -y;
apt-get install php-dom -y;
apt-get install php-xml -y;
apt-get install php-curl -y;
apt-get install php-gd -y;
apt-get update -y;
apt-get upgrade -y;
add-apt-repository ppa:ondrej/php 
apt-get update -y;
apt-get upgrade -y;
apt-get install php8.1-intl
systemctl restart apache2.service
