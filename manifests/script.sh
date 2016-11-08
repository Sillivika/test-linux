sudo apt-get update
sudo apt-get install -y puppet puppetmaster
sudo service puppetmaster stop
sudo hostnamectl set-hostname cube
sudo wget myy.haaga-helia.fi/~a1503093/scripti/hosts/hosts -O /etc/hosts
sudo service avahi-daemon restart
sudo mkdir -p /etc/puppet/modules/test/templates/
sudo mkdir -p /etc/puppet/modules/test/manifests/
sudo wget myy.haaga-helia.fi/~a1503093/scripti/init.pp/init.pp -O /etc/puppet/modules/test/manifests/init.pp
sudo wget myy.haaga-helia.fi/~a1503093/scripti/site.pp/site.pp -O /etc/puppet/manifests/site.pp
sudo wget myy.haaga-helia.fi/~a1503093/scripti/master/master.conf -O /etc/puppet/puppet.conf
sudo wget myy.haaga-helia.fi/~a1503093/scripti/templates/index.html -O /etc/puppet/modules/test/templates/index.html
sudo puppet agent --enable
sudo service puppet restart
sudo rm -r /var/lib/puppet/ssl
sudo service puppetmaster start
