class mongodb {
   	yumrepo {
         	10gen:
                	name => "10gen",
                	baseurl => "http://downloads-distro.mongodb.org/repo/redhat/os/i686",
                	gpgcheck => 0
        }


	package {
		"mongo-10gen":
			ensure => "present",
			require => Yumrepo['10gen'];
		"mongo-10gen-server":
			ensure => "present",
			require => Yumrepo['10gen'];
	}

}

