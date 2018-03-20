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
  command "curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -"
  command "sudo apt-get install -y nodejs"
  command "curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -"
  command 'echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list'
  command "sudo apt-get update && sudo apt-get install yarn"
end

execute "create node symlink" do
  command "ln -s /usr/bin/nodejs /usr/bin/node"
end
