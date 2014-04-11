#!/usr/bin/env bash
wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
echo "deb http://packages.elasticsearch.org/elasticsearch/1.0/debian stable main" > /etc/apt/sources.list.d/elasticsearch.list
apt-get update
# ===== elasticsearch ====
apt-get install default-jre -y
apt-get install elasticsearch

# install gui component
/usr/share/elasticsearch/bin/plugin --install jettro/elasticsearch-gui
# start the service
/etc/init.d/elasticsearch start

