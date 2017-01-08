template '/home/webserver/.ssh/authorized_keys' do
  source 'authorized_keys.html.erb'
  mode '0600'
  owner 'webserver'
  group 'deploy'
end

