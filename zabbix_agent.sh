wget https://repo.zabbix.com/zabbix/7.2/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.2+ubuntu24.04_all.deb
sudo dpkg -i zabbix-release_latest_7.2+ubuntu24.04_all.deb
sudo apt update
sudo apt install zabbix-agent2 -y
sudo apt install zabbix-agent2-plugin-mongodb zabbix-agent2-plugin-mssql zabbix-agent2-plugin-postgresql -y
sudo systemctl restart zabbix-agent2
sudo systemctl enable zabbix-agent2 

sudo nano /etc/zabbix/zabbix_agent2.conf

sudo systemctl restart zabbix-agent2 