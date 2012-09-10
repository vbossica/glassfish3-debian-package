# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.customize ["modifyvm", :id, "--memory", 1024]

  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.network :hostonly, "192.168.1.100"
  config.vm.share_folder "transfer", "/transfer", "build"
  config.vm.provision :shell, :path => "src/test/resources/provisioning.sh"

end
