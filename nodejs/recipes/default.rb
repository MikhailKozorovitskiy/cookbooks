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
