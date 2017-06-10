#
# Cookbook Name:: aws-cli
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "aws-cli python dependencies" do
	command "apt-get install python-setuptools python-dev build-essential -y"
end

execute "aws-cli install pip" do
	command "apt install pip"
end


execute "aws-cli update pip" do
	command "pip install --upgrade pip"
end

execute "aws-cli dependencies" do
	command "pip install --upgrade virtualenv"
end

execute "aws-cli install" do
	command "pip install --upgrade --user awscli"
end

