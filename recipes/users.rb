group 'deploy'

user 'webserver' do
  group 'deploy'
  system true
  home '/home/webserver'
  shell '/bin/bash'
end

directory '/home/webserver' do
  owner 'webserver'
  group 'deploy'
  mode  '0777'
  action :create
end

directory '/home/webserver/.ssh' do
   owner 'webserver'
   group 'deploy'
   mode  '0777'
   action :create
end

file '/home/webserver/.ssh/config' do
  mode '0755'
  owner 'webserver'
  group 'deploy'
end