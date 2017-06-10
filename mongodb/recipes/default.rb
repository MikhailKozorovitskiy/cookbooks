#
# Cookbook Name:: mongodb
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 'mongodb_addkey' do
	command 'sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6'
end

execute 'mongodb_addrepo' do
	command 'echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list'
end

execute "mongo apt-get update" do
	          command "apt-get update"
end

package 'mongodb-org' do
	  action :install
end

cookbook_file "/lib/systemd/system/mongod.service" do
	source "mongod.service"
	mode "0644"
end

execute "mongo restart systemctl" do
	command "systemctl daemon-reload"
end

execute "mongo enable service" do
	command "systemctl start mongod"
end

execute "mongo start service" do
	command "systemctl enable mongod"
end

