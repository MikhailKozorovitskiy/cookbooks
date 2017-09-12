instance = search("aws_opsworks_instance", "self:true").first

host = instance["hostname"]
domain = node['hosted-domain']
ip = instance["public_ip"]
hostzone = node['hosted-zone-id']

template '/home/ubuntu/aws-dns.json' do
	   variables({'host': host,
		     'domain': domain,
	   	     'ip': ip})
	  source 'aws-dns.erb'
	  owner 'root'
	  group 'root'
	  mode '0755'
end
execute "awscli setup dns" do
	command "aws route53 change-resource-record-sets --hosted-zone-id #{hostzone} --change-batch file:///home/ubuntu/aws-dns.json"
end
