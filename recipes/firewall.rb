ports = node['passenger_ubuntu']['open_ports']
firewall_rule "open ports #{ports}" do
  port ports
end
