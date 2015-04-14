class sites {
  # make sure that apache conf file is set
  file { "/etc/httpd/conf.d/iam-symfony.conf":
   	owner   => root,
   	group   => root,
   	mode    => 644,
   	source  => "puppet:///modules/sites/iam-symfony.conf",
   	require => [ Package[httpd] ],
   	notify	=> Service["httpd"]
  }

  #create projects directory
  exec {'mkdir projects': 
	  command => 'mkdir /vagrant/projects',
	  creates => '/vagrant/projects',
	  path => '/usr/local:/usr/bin:/bin'
	}	
}
