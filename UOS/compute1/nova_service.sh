service opensvswitch-switch restart
service nova-compute restart
service neutron-plugin-openvswitch-agent restart
source creds
nova-manage service-list