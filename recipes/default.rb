#
# Cookbook Name:: passenger_ubuntu
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe 'passenger_ubuntu::users'
include_recipe 'rvm_passenger_nginx::default'