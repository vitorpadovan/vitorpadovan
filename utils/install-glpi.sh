#/bin/sh
#wget https://raw.githubusercontent.com/vitorpadovan/vitorpadovan/main/utils/install-glpi.sh
wget https://github.com/glpi-project/glpi/releases/download/10.0.14/glpi-10.0.14.tgz
tar -xvzf glpi.tar
cd glpi
mv * -r /var/www/html
rm /var/www/html/index.html
apt-get install php -y;
apt-get install php-mysql -y;
apt-get install php-dom -y;
apt-get install php-xml -y;
apt-get install php-curl -y;
apt-get install php-gd -y;
