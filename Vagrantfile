Vagrant.configure("2") do |config|
  
  # use VirtualBox
  config.vm.provider "virtualbox"
  
  # use this box as basis
  config.vm.box = "ubuntu/bionic64"
  
  # NAT: forward individual ports to host OS (you can copy this line multiple times)
  config.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true
  config.vm.network "forwarded_port", guest: 80,   host: 80,   auto_correct: true
  config.vm.network "forwarded_port", guest: 9000, host: 9000, auto_correct: true
  
  # create private network, so all ports of VM are accessible via its own IP address
  config.vm.network "private_network", ip: "192.168.178.90"
  # config.vm.network "private_network", type: "dhcp"
  
  # Bridge: create a network bridge withe the host's network
  # config.vm.network "public_network"
  
  # share the "shared" directory with the VM
  config.vm.synced_folder "shared", "/shared"
  
  # one-time provisioning
  config.vm.provision :shell, path: "bootstrap.sh"
  
  # configure DNS hostname
  config.vm.hostname = "dockerhost"
  
  # VM credentials (for existing user, will not create new users)
  config.ssh.insert_key = true
  # config.ssh.username = "ubuntu/"
  # config.ssh.password = "password"
  
  # enable/disable gui
  config.vm.provider "virtualbox" do |v|
    v.gui = false
    v.cpus = 4
	v.memory = 4096
	# define VirtualBox name of the machine
	v.name = "dockerhost"
  end
  
end

# vagrant up
# vagrant halt
# vagrant reload
# vagrant destroy -f
