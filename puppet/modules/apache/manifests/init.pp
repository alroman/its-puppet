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

  # Allow HTTP port 80 connection
  firewall { '200 allow outgoing http':
    chain    => 'OUTPUT',
    state    => ['NEW'],
    dport    => '80',
    proto    => 'tcp',
    action   => 'accept',
  }
}
