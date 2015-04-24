class phpmyadmin {
	
  package { 'phpMyAdmin': 
    ensure => present,
	  require => Yumrepo['remi-repo']
  }
	
  # make sure that config file is set
  file { "/etc/phpMyAdmin/config.inc.php":
    owner   => root,
    group   => root,
    mode    => 644,
    source  => "puppet:///modules/phpmyadmin/config.inc.php",
    require => Package["phpMyAdmin"]
  }	  	
  	
  # make sure that apache conf file is set
  file { "/etc/httpd/conf.d/phpMyAdmin.conf":
   	owner   => root,
   	group   => root,
   	mode    => 644,
   	source  => "puppet:///modules/phpmyadmin/phpmyadmin.conf",
   	require => Package["phpMyAdmin"],
   	notify	=> Service["httpd"],
  }  	
}
