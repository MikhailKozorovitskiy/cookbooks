#
# Cookbook Name:: mysql-local
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "mysql"

mysql_service 'mysql-local' do
	port '3306'
	version '5.7'
	initial_root_password 'change me'
	action [:create, :start]
end
