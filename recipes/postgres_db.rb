bash 'create database' do
  code <<-EOH
    sudo -u postgres psql -c "CREATE DATABASE rails_app_production \
    WITH OWNER = postgres \
    ENCODING = 'UTF8' \
    CONNECTION LIMIT = -1;"
  EOH
    not_if  "psql -l | grep 'rails_app_production'" , :user => 'postgres'
end