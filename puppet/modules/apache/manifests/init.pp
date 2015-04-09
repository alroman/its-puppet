class apache {

  package {httpd: ensure => present}
  package { httpd-devel: ensure => installed }
  package {mod_ssl: ensure => installed}

  service {
    httpd:
    enable    => true,
    ensure    => running,
    subscribe => [Package[httpd], Package[php]]
  }
}
