1. VMWare.com oldalon a products fül alatt letöltöttem a VMWare Workstation Player-t
2. Ubuntu.com oldalról a letöltések fül alatt letöltöttem az Ubuntu Linux Server verzióját
4. Létrehoztam egy fájlt a "touch" paranccsal aminek neve "install_my_webserver.sh"
5. A fájlnak végrehajtási jogusultságot adtam a "chmod +x" paranccsal
6. A shell fájlban elhelyeztem a "#!/bin/bash" jelzést a nano paranccsal
7. Majd a következőket írtam bele:
	sudo apt-get install -y apache2 =Hogy automatikusan települjön a webszerver
	sudo cp -f wsite.html /var/www/html/index.html =A webszerver html mappájába bemásolom a saját html fájlomat
Egy 2-ig tartó ciklussal létrehozom a 2 mappát, ahová az echo parancs által kiírt szöveget átiránytom a tee parancsnak, ami a meghatározott fájlba írja a tartalmat.
"find" parancs segtségével a /etc mappában fájl tpusú, nevében a-val kezdődő és .conf-ra végződő fájlokat keresek, majd ezt beleíratom a 3. mappában lévő fájlba.
	sudo ifconfig eth0 10.43.12.3 netmask 255.255.0.0 =Ez módosítja a gép ip címét és hálózati maszkját.
	wget https://wordpress.org/latest.zip -o latest.zip =Ez letölti a wordpress tartalomkezelőt
	mkdir var/www/html/wordpress =Létrhozok egy "Wordpress" nevű mappát ahova majd kicsomagolom az elöbb letöltött .zip fájlt. 
	unzip latest.zip -d /var/www/html/wordpress =Ezzel a paranccsal a gép kicsomagolja a Wordpress-t a megadott mappába
	rm -f latest.zip =Ezzel a paranccsal a gép automatikusan törli a letöltött és kicsomagolt zip fájlt.
