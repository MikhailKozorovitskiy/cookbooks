#
# Cookbook Name:: mongodb-local
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "chef-mongodb::10gen_repo"
include_recipe "chef-mongodb::default"

mongodb_instance "mongodb" do
 action [:create, :start]
end
