class symfony {
  # Symfony install 
	exec {'symfony-get': 
	  command => 'curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony;
	  					 	chmod a+x /usr/local/bin/symfony',
	  creates => '/usr/local/bin/symfony',
	  path => '/usr/local:/usr/bin:/bin'
	}

	# exec { 'composer-install':
	# 	command      => '/bin/echo',
	# 	#path        => '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
	# 	#refreshonly => true,
	# }

}