#
# Cookbook Name:: php-repo
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "nginx"

apt_repository 'php-repo' do
	  uri        'ppa:ondrej/php'
end

execute "apt-get update" do
	          command "apt-get update"
end


