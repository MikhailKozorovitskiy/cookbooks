user = node['user']
domain = node['domain']
password = node['password']

Chef::Log.debug(node)

template "/etc/php/7.1/fpm/pool.d/#{domain}.conf" do 
  source 'pool.erb'
  variables({user: user,
             domain: domain})
  owner 'root'
  group 'root'
  mode '0644'
end

template "/etc/nginx/sites-enabled/#{domain}" do
  source 'nginx.erb'
  variables({user: user,
             domain: domain})
  owner 'root'
  group 'root'
  mode '0644'
end

user "#{user}" do
  manage_home true
  comment 'Site user'
  home "/home/#{user}"
  shell '/bin/bash'
  password "#{password}"
end

directory "/home/#{user}/web" do
  owner "#{user}"
  group "#{user}"
  mode '0755'
  action :create
end


service "php7.1-fpm" do
  action :restart
end

service "nginx" do
  action :restart
end

