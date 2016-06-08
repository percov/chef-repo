# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "wilson"
#client_key               "#{current_dir}/wilson.pem"
client_key               "/home/centos/wilson.pem"
validation_client_name   "coveros-validator"
validation_key           "#{current_dir}/coveros-validator.pem"
chef_server_url          "https://ec2-52-91-100-140.compute-1.amazonaws.com/organizations/coveros"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:aws_credential_file] = "/home/centos/aws.txt"
chef_client_path 'chef-client -l debug'
