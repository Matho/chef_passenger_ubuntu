template '/home/webserver/.ssh/authorized_keys' do
  source 'authorized_keys.html.erb'
  mode '0600'
  owner 'webserver'
  group 'deploy'
end

template '/home/webserver/.ssh/id_rsa' do
  source 'id_rsa.html.erb'
  mode '0600'
  owner 'webserver'
  group 'deploy'
end


template '/home/webserver/.ssh/id_rsa.pub' do
  source 'id_rsa.pub.html.erb'
  mode '0600'
  owner 'webserver'
  group 'deploy'
end


