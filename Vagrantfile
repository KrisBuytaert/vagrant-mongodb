Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.define :mongo1 do |mongo1_config|
       mongo1_config.ssh.max_tries = 100
       mongo1_config.vm.box = "MyCentOS2"
       mongo1_config.vm.network("192.168.99.101")	
       mongo1_config.vm.host_name = "mongo1"
       mongo1_config.vm.provision :puppet do |mongo1_puppet|
       	mongo1_puppet.pp_path = "/tmp/vagrant-puppet"
        mongo1_puppet.manifests_path = "manifests"
        mongo1_puppet.module_path = "modules"
        mongo1_puppet.manifest_file = "site.pp"
       end
   end  
   config.vm.define :mongo2 do |mongo2_config|
    mongo2_config.ssh.max_tries = 100
       mongo2_config.vm.box = "MyCentOS2"
       mongo2_config.vm.network("192.168.99.102")	
       mongo2_config.vm.host_name = "mongo2"
       mongo2_config.vm.provision :puppet do |mongo2_puppet|
        mongo2_puppet.pp_path = "/tmp/vagrant-puppet"
        mongo2_puppet.manifests_path = "manifests"
        mongo2_puppet.module_path = "modules"
        mongo2_puppet.manifest_file = "site.pp"
       end
   end
  

    config.vm.define :mongo3 do |mongo3_config|
    mongo3_config.ssh.max_tries = 100
       mongo3_config.vm.box = "MyCentOS2"
       mongo3_config.vm.network("192.168.99.103")	
       mongo3_config.vm.host_name = "mongo3"
       mongo3_config.vm.provision :puppet do |mongo3_puppet|
        mongo3_puppet.pp_path = "/tmp/vagrant-puppet"
        mongo3_puppet.manifests_path = "manifests"
        mongo3_puppet.module_path = "modules"
        mongo3_puppet.manifest_file = "site.pp"
       end
  end
  


  
  # Every Vagrant virtual environment requires a box to build off of.
  #config.vm.box = "MyCentOS2"
#   config.vm.box = "lucid32"
#  config.vm.box = "debian_squeeze_32"
  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host only network IP, allowing you to access it
  # via the IP.
  #config.vm.network "33.33.33.10"


  #config.vm.host_name = "mysql"
  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port "http", 80, 8080
  #config.vm.forward_port "http", 80, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  # Enable provisioning with chef solo, specifying a cookbooks path (relative
  # to this Vagrantfile), and adding some recipes and/or roles.
  #
  # config.vm.provision :chef_solo do |chef|
  #   chef.cookbooks_path = "cookbooks"
  #   chef.add_recipe "mysql"
  #   chef.add_role "web"
  #
  #   # You may also specify custom JSON attributes:
  #   chef.json = { :mysql_password => "foo" }
  # end



 
  # Enable provisioning with chef server, specifying the chef server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision :chef_server do |chef|
  #   chef.chef_server_url = "https://api.opscode.com/organizations/ORGNAME"
  #   chef.validation_key_path = "ORGNAME-validator.pem"
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
  # IF you have your own Chef Server, the default validation client name is
  # chef-validator, unless you changed the configuration.
  #
  #   chef.validation_client_name = "ORGNAME-validator"
end
