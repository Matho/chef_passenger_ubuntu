template '/etc/postgresql/9.5/main/pg_hba.conf' do
  source 'pg_hba.html.erb'
  mode '0600'
  owner 'postgres'
  group 'postgres'
end

