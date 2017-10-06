#
# Cookbook Name:: php7.0
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "php-repo"

package 'php7.0' do
	          action :install
end
package 'php7.0-cli' do
	          action :install
end

package 'php7.0-curl' do
	          action :install
end

package 'php7.0-mysql' do
	          action :install
end

package 'php7.0-gd' do
	          action :install
end

package 'php7.0-xml' do
	          action :install
end

package 'php7.0-mbstring' do
	          action :install
end

package 'php7.0-mcrypt' do
	          action :install
end

package 'php7.0-fpm' do
	                  action :install
end

package 'php7.0-json' do
	          action :install
end

package 'php7.0-imagick' do
	          action :install
end
package 'php7.0-bcmath' do
	          action :install
end
package 'php7.0-bz2' do
	          action :install
end
package 'php7.0-dba' do
	          action :install
end
package 'php7.0-soap' do
	          action :install
end
package 'php7.0-zip' do
	          action :install
