# Vagrant.configure("2") do |config|
# 	config.vm.box = ""
# 	config.vm.box_url = ""
# 	config.vm.network "public_network", ip: "192.168.0.17"
# 	#config.vm.network "forwarded_port", guest: 80, host: 4567, protocol: "tcp"
# 	#config.vm.synced_folder "./app", "/var/www", create: true
# 	config.vm.provision "shell", path: "myshell.sh"
# end


# ## SHELL PROVISIONING
# $holder = <<SCRIPT

# echo Hello There!!
# echo Today is date!!
# SCRIPT


# Vagrant.configure("2") do |config|
# 	# Way-1
# 	config.vm.provision "shell", path: "myshell.sh"
	
# 	# Way-2
# 	config.vm.provision "shell", inline: "echo Hello!!"

# 	# Way-3
# 	config.vm.provision "shell", inline: $holder

# 	# Way-4
# 	config.vm.provision "shell" do |sh|
# 		sh.inline = "echo $1"
# 		sh.args = ["Hello!!"]
# 	end
# end


# ## CHEF_CLIENT PROVISION

# Vagrant.configure("2") do |config|
# 	config.vm.box = ""
# 	config.vm.box_url = ""
# 	config.vm.network "public_network", ip: "192.168.0.17"
# 	config.vm.provision "chef_client" do |chef|
# 		chef.chef_server_url = ""
# 		chef.validation_key_path = "ORG-VALIDATOR.pem"
# 		chef.validation_client_name = "ORG-VALIDATOR"
# 		chef.node_name = "MyNode"
# 		chef.provision_path = "/etc/chef"
# 		chef.log_level = :debug
# 		chef.add_recipe "apache"
# 		chef.add_role "web"
# 		chef.environment = "development"
# 	end
# end




