#!/bin/bash

set -e

NETWORK_ADAPTER_NAME="enp0s8"

while getopts ":on:" opt; do
  case $opt in
    n) NETWORK_ADAPTER_NAME="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

ifconfig
MASTER_ADDRESS=$(ifconfig | grep "${NETWORK_ADAPTER_NAME}" -A1 | grep 'inet' | awk '{ print $2 }' | sed 's/addr://')
sudo sed s/'#master: salt'/"master: ${MASTER_ADDRESS}"/ -i /etc/salt/minion

cat /etc/salt/minion | grep master:
sudo ufw allow 22/tcp
sudo ufw allow 4505/tcp
sudo ufw allow 4506/tcp
echo "Y" | sudo ufw enable
sudo service salt-master start
sudo service salt-master status
sudo rm /etc/salt/minion_id
sudo service salt-minion start
sudo service salt-master restart
sudo service salt-minion restart
sleep 5
sudo service salt-minion status
sudo sed "s/#master_finger: ''/master_finger: $(sudo salt-key -f master.pub | grep master.pub | awk '{ print $2 }')/" -i /etc/salt/minion
cat /etc/salt/minion | grep master:
cat /etc/salt/minion | grep master_finger:
echo "Waiting for salt-minion to submit key to master"
sleep 5
# sudo service salt-minion status
# sudo salt-key
echo "Attempt 1 to accept keys"
sudo echo "Y" | sudo salt-key --accept-all
sleep 10
echo "Attempt 2 to accept keys"
sudo echo "Y" | sudo salt-key --accept-all
sleep 15
echo "Attempt 3 to accept keys"
sudo echo "Y" | sudo salt-key --accept-all
