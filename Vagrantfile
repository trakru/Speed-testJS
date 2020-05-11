# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7"

  config.vm.define "app" do |app|
    app.vm.hostname = "app"	  
    app.vm.synced_folder "F:/repos/Speed-testJS", "/vagrant/Speed-testJS",
      create: true, group: "vagrant", owner: "vagrant", 
      id: "myApp"
    app.vm.network "forwarded_port", guest: 8080, host: 8081,
    auto_correct: true, id: "Speedtest-app"
    app.vm.network "private_network", ip: "192.168.200.10"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
  

  config.vm.provision "shell", path: "scripts/startup.sh"
end
