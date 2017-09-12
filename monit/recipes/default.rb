#
# Cookbook Name:: monit
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "apt-get monit" do
	  command "apt-get install monit"
end

template '/etc/monit/monitrc' do
	  source 'monitrc.erb'
	  owner 'root'
	  group 'root'
	  mode '0755'
end

template '/etc/nginx/sites-enabled/default' do
	  source 'nginx.erb'
	  owner 'root'
	  group 'root'
	  mode '0755'
end

service "monit" do
  action :restart
end

service "nginx" do
  action :restart
end
