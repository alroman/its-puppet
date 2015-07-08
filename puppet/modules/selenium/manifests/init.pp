class selenium {

  # Install X virtual frame buffer
  package { 'Xvfb':
    ensure => installed,
  }
  package { 'libXfont':
    ensure => installed,
  }
  package { 'Xorg':
    ensure => installed,
  }

  # Install firefox
  package { 'firefox':
    ensure => installed,
  }

  class { 'java':
    distribution => 'jre',
  }

  # Download selenium standalone server
  exec{'selenium_download':
    command => "/usr/bin/curl -LsS http://goo.gl/cvntq5 -o /opt/selenium-server-standalone.jar",
    creates => "/opt/selenium-server-standalone.jar",
  }

  # Start selenium server in the background with X virtual frame buffer.
  exec{'selenium_start':
    command => "/usr/bin/xvfb-run /usr/bin/java -jar /opt/selenium-server-standalone.jar &>/dev/null &",
    require => [Package["Xvfb"], Package["Xorg"], Exec["selenium_download"], Class["java"]]
  }

}
