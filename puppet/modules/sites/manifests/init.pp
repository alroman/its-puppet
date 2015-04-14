class sites {
  # make sure that apache conf file is set
  file { "/etc/httpd/conf.d/iam-symfony.conf":
   	owner   => root,
   	group   => root,
   	mode    => 644,
   	source  => "puppet:///modules/sites/iam-symfony.conf",
   	notify	=> Service["httpd"],
  }  	
}
