sudo a2dissite example.com.conf
sudo rm /etc/apache2/sites-available/example.com.conf
sudo rm -Rf /var/www/example.com
sudo service apache2 restart