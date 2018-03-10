Vagrant.configure("2") do |config|
  config.vm.box = "sangyeonK/ubuntu-16.04"
  config.vm.provider "hyperv"
  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "install_docker"
  end
end
