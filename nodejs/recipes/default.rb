#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"

package 'nodejs' do
  action :install
  end

package 'npm' do
  action :install
  end

execute "npm brunch install" do
  command "npm install -g brunch"
end

execute "npm bower install" do
  command "npm install -g bower"
end

execute "create node symlink" do
  command "ln -s /usr/bin/nodejs /usr/bin/node"
end
