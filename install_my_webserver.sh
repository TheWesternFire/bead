#!/bin/bash
#sudo apt-get install -y apache2
#sudo cp -f wsite.html /var/www/html/index.html
for szam in {1..2};
do
	sudo mkdir /var/www/html/${szam}
	echo "Hello a ${szam} mappából.<br><a href='../index.html'>főoldal</a>" | sudo tee /var/www/html/${szam}/${szam}.html
	echo "<br><a href='./${szam}/${szam}.html'>${szam}</a>" | sudo tee -a /var/www/html/index.html
	echo "<br><a href='/3/3.html>3</a>" | sudo tee /var/www/html/3/3.html
done

sudo mkdir /var/www/html/3
sudo find /etc -name "a*.conf" -type f | sudo tee /var/www/html/3/3.html

sudo echo '<br><a href="../index.html">főoldal</a>' | sudo tee -a /var/www/html/3/3.html
sudo ifconfig eth01 10.43.12.3 netmask 255.255.0.0
wget https://wordpress.org/latest.zip
sudo mkdir /var/www/html/wordpress
sudo unzip latest.zip -d /var/www/html/wordpress
rm -f latest.zip

