instance = search("aws_opsworks_instance", "self:true").first
stack = search("aws_opsworks_stack").first

execute "awscli de-register instance" do
	command "aws opsworks --region #{stack['region']} deregister-instance --instance-id #{instance['ami_id']}"
end
