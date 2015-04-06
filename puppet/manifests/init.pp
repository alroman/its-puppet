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

# Vim
package {
  'vim-enhanced': ensure => installed
}

# Ruby gems & build tools
package {
  'ruby-devel': ensure => installed
}
package {
  rubygems: ensure => installed,
  require => [ Package[ruby-devel] ]
}

# Compass framework
package {
  'compass': ensure => 'installed',
  provider => 'gem',
  require => [ Package[rubygems] ]
}
