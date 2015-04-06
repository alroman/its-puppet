class php {

  package {'php':
    ensure  => present,
    install_options   => [ { '--enablerepo' => 'remi' } ]
  }

  package {
    [ "php-common", "php-mcrypt", "php-xml", "php-process", "php-intl", "php-mysql" ]:
    ensure => present,
    install_options   => [ { '--enablerepo' => 'remi' } ],
    require => [ Package[php] ]
  }

  file { "/etc/php.ini":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/php/php.ini",
    require => [ Package[php] ]
  }
}
