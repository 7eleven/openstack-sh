route add default gw 192.168.100.1
apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade
apt-get install -y ntp
apt-get install -y kvm libvirt-bin pm-utils
apt-get install -y nova-compute-kvm python-guestfs
apt-get install -y neutron-common neutron-plugin-ml2 neutron-plugin-openvswitch-agent
