# TODO - not working

bash 'create default ruby' do
  code <<-EOH
      echo "source /etc/profile.d/rvm.sh" >> ~/.bashrc
      source ~/.bashrc
      /usr/local/rvm/bin/rvm --default use ruby-#{node.default["rvm_passenger_nginx"]["applications"][0]["ruby"] }
  EOH
  not_if "cat ~/.bashrc | grep '/etc/profile.d/rvm.sh' "
end