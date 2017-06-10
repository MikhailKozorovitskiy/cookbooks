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
	command "apt-get install python-pip -y"
end


execute "aws-cli update pip" do
	command "pip -q install --upgrade pip"
end

execute "aws-cli install pip" do
	command "pip -q install --upgrade --user awscli"
end

execute "aws-cli install" do
	        command "apt-get install awscli -y"
end

template '/home/ubuntu/aws-dns.json' do
	   variables('host': node["opsworks"]["instance"]["hostname"],
		     'domain': node['hosted-domain'],
	   	     'ip': node["opsworks"]["instance"]["ip"])
	  source 'aws-dns.erb'
	  owner 'root'
	  group 'root'
	  mode '0755'
end

execute "aws-cli install" do
	command "aws route53 change-resource-record-sets --hosted-zone-id {node['hosted-zone-id']} --change-batch file:///home/ubuntu/aws-dns.json"
end

