class module11{
      exec {'apt-update'
      command => '/usr/bin/apt-get update'
}
package {'apache2':
          ensure => present,
          require => Exec['apt-update']
        }
}


class docker {
           class {'docker::install':}
           class {'docker::files':}
}
