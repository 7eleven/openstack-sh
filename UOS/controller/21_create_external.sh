source creds
neutron net-create ext-net --shared --router:external=True
neutron subnet-create ext-net --name ext-subnet --allocation-pool start=192.168.100.101,end=192.168.100.200 --disable-dhcp --gateway 192.168.100.1 192.168.100.0/24