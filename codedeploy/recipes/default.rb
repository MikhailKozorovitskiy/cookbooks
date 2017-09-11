#
# Cookbook Name:: codedeploy
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "awscli"

remote_file "#{Chef::Config[:file_cache_path]}/codedeploy-install.sh" do
    source "https://s3.amazonaws.com/aws-codedeploy-us-east-1/latest/install"
    mode "0777"
    owner "root"
    group "root"
end

execute "install_codedeploy_agent" do
  command "#{Chef::Config[:file_cache_path]}/codedeploy-install.sh auto"
  user "root"
end

service "codedeploy-agent" do
  action [:enable, :start]
end

directory '/webapps/' do
  owner 'root'
  group 'root'
  recursive true
end
