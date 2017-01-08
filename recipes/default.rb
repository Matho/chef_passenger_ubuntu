#
# Cookbook Name:: passenger_ubuntu
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe 'passenger_ubuntu::users'
include_recipe 'passenger_ubuntu::ssh_keys'
include_recipe 'postgresql::default'
include_recipe 'postgresql::server_debian'
include_recipe 'postgresql::config_initdb'
include_recipe 'postgresql::contrib'
include_recipe 'passenger_ubuntu::postgres_db'
include_recipe 'rvm_passenger_nginx::default'
include_recipe 'monit-ng::default'
include_recipe "imagemagick"
include_recipe 'swap_tuning'
# #include_recipe 'sudo::default'
include_recipe 'sshd::default'
include_recipe 'fail2ban::default'
include_recipe 'passenger_ubuntu::pg_hba'
include_recipe 'passenger_ubuntu::rvm'
include_recipe 'passenger_ubuntu::firewall'


