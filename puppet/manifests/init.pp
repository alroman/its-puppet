include php, mysql, apache

# Basic build tools
package {
  gcc: ensure => installed
}

package {
  make: ensure => installed
}

package {
  man: ensure => installed
}

# Ruby gems & build tools
package {
  'ruby-devel': ensure => installed
}
package {
  rubygems: ensure => installed,
  require => [ Package[ruby-devel] ]
}

# Compass
package {
  'compass': ensure => 'installed',
  provider => 'gem',
  require => [ Package[rubygems] ]
}
