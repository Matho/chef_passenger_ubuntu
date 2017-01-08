bash 'create database' do
  code <<-EOH
    sudo -u postgres psql -c "CREATE DATABASE #{node.default["rvm_passenger_nginx"]["applications"][0]["name"]}_#{node.default["rvm_passenger_nginx"]["applications"][0]["environment"]} \
    WITH OWNER = postgres \
    ENCODING = 'UTF8' \
    CONNECTION LIMIT = -1;"
  EOH
    not_if  "psql -l | grep '#{node.default["rvm_passenger_nginx"]["applications"][0]["name"]}_#{node.default["rvm_passenger_nginx"]["applications"][0]["environment"]}'" , :user => 'postgres'
end