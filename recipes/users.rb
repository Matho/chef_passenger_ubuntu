group 'deploy'
group 'rvm'

user 'webserver' do
  group 'deploy'
  group 'rvm'
  system true
  home '/home/webserver'
  shell '/bin/bash'
end

directory '/home/webserver' do
  owner 'webserver'
  group 'deploy'
  mode  '0755'
  action :create
end

directory '/home/webserver/.ssh' do
   owner 'webserver'
   group 'deploy'
   mode  '0755'
   action :create
end

file '/home/webserver/.ssh/config' do
  mode '0755'
  owner 'webserver'
  group 'deploy'
end

file "/home/webserver/chef_secret" do
  content 'asdasdas1458'
  mode '0755'
  owner 'webserver'
  group 'deploy'
  action :create
end

# sudoer user
group 'sshlogin'

user 'martin' do
  group 'sshlogin'
  group 'rvm'
  system true
  home '/home/martin'
  shell '/bin/bash'
  password '$1$afGk7OxQ$SI8Y3uWPjFlOqEof5L7Kv0' # https://docs.chef.io/resource_user.html
end

