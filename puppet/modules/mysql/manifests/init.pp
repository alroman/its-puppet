class mysql {

  # Install mysql
  package { [ "mysql", "mysql-libs", "mysql-server" ]:
    ensure => present,
    install_options   => [ { '--enablerepo' => 'remi' } ]
  }

  # Run mysql
  service {
    mysqld:
    enable    => true,
    ensure    => running,
    subscribe => Package["mysql-server"]
  }

  # Use a custom mysql configuration file
  file { '/etc/my.cnf':
    owner   => root,
    group   => root,
    mode    => 660,
    source  => 'puppet:///modules/mysql/my.cnf',
    require => Package['mysql-server'],
    notify  => Service['mysqld'],
  }

  # We set the root password here
  # exec { 'set-mysql-password':
  #   unless  => 'mysqladmin -uroot -proot status',
  #   command => "mysqladmin -uroot password a9120ed2b58af37862a83f5b9f850819ed08b2a9",
  #   path    => ['/bin', '/usr/bin'],
  #   require => Service['mysql'];
  # }
}
