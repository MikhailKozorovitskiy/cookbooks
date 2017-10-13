#
# Cookbook Name:: nginx 
# Recipe:: nodefe
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "nginx"

template '/etc/nginx/sites-enabled/default' do
          source 'nodefe.erb'
          owner 'root'
          group 'root'
          mode '0700'
end

service "nginx" do
  action :restart
end

