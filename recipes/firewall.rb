node.default["passenger_ubuntu"]["open_ports"].each do |open_port|
  bash 'sudo ufw allow port' do
    code <<-EOH
        sudo ufw allow #{open_port}
    EOH
  end
end

bash 'enable ufw firewall' do
  code <<-EOH
        sudo ufw enable
  EOH
end
