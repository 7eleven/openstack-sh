apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade
apt-get install -y ntp
apt-get install -y vlan bridge-utils
apt-get install -y neutron-plugin-ml2 neutron-plugin-openvswitch-agent dnsmasq neutron-l3-agent neutron-dhcp-agent
