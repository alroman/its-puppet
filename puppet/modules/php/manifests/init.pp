class php {

  package {'php':
    ensure  => present,
    require => Yumrepo['remi-repo']
  }

  package {
    [ "php-common", "php-mcrypt", "php-xml", "php-process", "php-intl", "php-mysql", "php-mbstring", "php-ldap" ]:
    ensure => present,
    require => [ Package[php], Yumrepo['remi-repo'] ]
  }

  file { "/etc/php.ini":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/php/php.ini",
    require => Package[php]
  }
}
