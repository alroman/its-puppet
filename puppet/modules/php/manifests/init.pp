class php {

  package {'php':
    ensure  => present,
    install_options   => [ { '--enablerepo' => 'remi' } ]
  }

  package {
    [ "php-common", "php-mcrypt", "php-mbstring" ]:
    ensure => present,
    install_options   => [ { '--enablerepo' => 'remi' } ],
    require => [ Package[php] ]
  }
}
