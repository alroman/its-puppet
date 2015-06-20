class php {

  package {'php':
    ensure  => present,
    require =>  Yumrepo['remi-php55']
  }

  package {
    [ "php-common", "php-mcrypt", "php-xml", "php-process", "php-intl", "php-mysql", "php-mbstring", "php-ldap", "php-soap", "php-opcache" ]:
    ensure => present,
    require => [ Package[php], Yumrepo['remi-repo'], Yumrepo['remi-php55']  ]
  }

  file { "/etc/php.ini":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/php/php.ini",
    require => Package[php]
  }
}
