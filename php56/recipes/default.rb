#
# Cookbook Name:: php5.6
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "php-repo"

package 'php5.6' do
	  action :install
end
package 'php5.6-cli' do
	  action :install
end

package 'php5.6-curl' do
	  action :install
end

package 'php5.6-mysql' do
	  action :install
end

package 'php5.6-gd' do
	  action :install
end

package 'php5.6-xml' do
	  action :install
end

package 'php5.6-mbstring' do
	  action :install
end

package 'php5.6-mcrypt' do
	  action :install
end

package 'php5.6-fpm' do
	  action :install
end


