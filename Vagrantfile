
Vagrant.configure("2") do |config|
	config.vm.box = "hashicorp/precise32"
  	config.vm.box_url = "https://atlas.hashicorp.com/hashicorp/boxes/precise32"
#  	config.vm.network "public_network", ip: "192.168.50.50"
	# config.vm.provider "virtualbox" do |vrbox|
	# 	vrbox.gui = true
	# end
	#config.vm.provision "shell", inline: "echo test shell provisioning > /home/vagrant/sampleshell.txt"
	config.vm.provision "shell" do |s|
		s.inline = "echo $1 $2 $3 > /home/vagrant/sampleshell2.txt"
		s.args = ["Hello","Prakher","Singhal"]
#		s.path = "myshell.sh"
	end
end
