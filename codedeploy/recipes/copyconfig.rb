#
# Cookbook Name:: codedeploy
# Recipe:: codedeployconfig
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "codedeploy"

stripe_key = node['STRIPE_PUBLISHABLE_KEY']
base_api_url = node['BASE_API_URL']
base_url = node['BASE_URL']
app_domain = node['APP_DOMAIN']
app_path = node['APP_PATH']

template '/root/.env' do
          variables({'stripe_key': stripe_key,
              'base_api_url': base_api_url,
              'base_url': base_url,
              'app_domain': app_domain,
              'app_path': app_path})
          source 'env.erb'
          owner 'root'
          group 'root'
          mode '0700'
end
