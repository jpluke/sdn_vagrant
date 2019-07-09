## This is the base Vagrantfile used to create the ryu box. 

Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"

  config.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--cpuexecutioncap", "80"]
      v.customize ["modifyvm", :id, "--memory", "2048"]
     # v.gui=true
  end
  


  config.vm.synced_folder ".", "/vagrant", type: "virtualbox" 

  ## Guest Config
  config.vm.hostname = "RyuBox"
  config.vm.network :private_network, ip:"192.168.0.200"
  config.vm.network :forwarded_port, guest:6633, host:6637 # forwarding of port

 

  ## Provisioning
  config.vm.provision :shell, privileged: false, :path => "setup/basic-setup.sh"
  config.vm.provision :shell, privileged: false, :path => "setup/ovs-setup.sh"
  config.vm.provision :shell, privileged: false, :path => "setup/mininet-setup.sh"
  config.vm.provision :shell, privileged: false, :path => "setup/ryu-setup.sh"


  ## SSH config
  config.ssh.forward_x11 = true
end
