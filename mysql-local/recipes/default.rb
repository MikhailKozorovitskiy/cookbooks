#
# Cookbook Name:: mysql-local
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/data' do
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

mysql_service 'mysql-local' do
	port '3306'
	version '5.7'
	data_dir '/data/mysql'
	initial_root_password 'change me'
	action [:create, :start]
end
