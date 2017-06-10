#
# Cookbook Name:: mongodb
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_repository 'mongodb' do
	uri        'http://repo.mongodb.org/apt/ubuntu'
	keyserver  'keyserver.ubuntu.com'
	key 	   'EA312927'
end

execute "apt-get update" do
	                  command "apt-get update"
end

