#!/bin/bash
sudo apt-get install -y apache2
sudo apt-get install -y net-tools
sudo apt-get install -y unzip

sudo cp -f wsite.html /var/www/html/index.html
sudo mkdir /var/www/html/3
sudo find /etc -name "a*.conf" -type f | sudo tee /var/www/html/3/3.html

for x in {1..2};
do
	sudo mkdir /var/www/html/${x}
	echo "Hello a ${x} mappából.<br><a href='../index.html'>Főoldal</a>" | sudo tee /var/www/html/${x}/${x}.html
	echo "<br><a href='./${x}/${x}.html'>${szam}</a>" | sudo tee -a /var/www/html/index.html
	echo "<br><a href='/3/3.html>3</a>" | sudo tee /var/www/html/index.html
done

sudo echo '<br><a href="../index.html">Főoldal</a>' | sudo tee -a /var/www/html/3/3.html
sudo ifconfig ens33 10.43.12.3 netmask 255.255.0.0

wget "https://wordpress.org/latest.zip"
unzip latest.zip
sudo mkdir /var/www/html/wordpress
sudo cp -r wordpress/* /var/www/html/wordpress
rm -f latest.zip
rm -rf wordpress/
