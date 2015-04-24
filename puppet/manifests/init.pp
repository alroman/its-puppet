include repos, php, mysql, apache, phpmyadmin, sites, symfony

# Removes deprecated msg warning.
Package {
   allow_virtual => true,
}

# Load repos before we load packages.
Yumrepo <| |> -> Package <| |>

# Basic build tools
package { 'gcc': 
  ensure => installed
}
package { 'make': 
  ensure => installed
}
package { 'ruby-devel': 
  ensure => installed
}
package { 'man': 
  ensure => installed
}

# Vim
package { 'vim-enhanced': 
  ensure => installed
}

# Ruby gems
package { 'rubygems': 
  ensure => installed,
  require => Package[ruby-devel]
}

# Compass framework
package { 'compass': 
  ensure => 'installed',
  provider => 'gem',
  require => Package[rubygems]
}

# Git & bash completion
package { 'git': 
  ensure => installed
}
package { 'bash-completion': 
  ensure => installed,
  require => Package[git]
}
