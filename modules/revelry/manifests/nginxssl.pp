class revelry::nginxssl {
  include nginx

  file { "${nginx::config::configdir}/ssl":
    ensure => "directory"
  }

  $cert = "${nginx::config::configdir}/ssl/host.cert"

  file { $cert:
    ensure => present,
    source => 'puppet:///modules/revelry/ssl/host.cert',
  }

  file { "${nginx::config::configdir}/ssl/host.key":
    ensure => present,
    source => 'puppet:///modules/revelry/ssl/host.key',
  }

  exec {"trust-nginx-cert":
    command => "sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ${cert}",
    require => File[$cert],
    user => root,
  }

  file { "${nginx::config::configdir}/nginx.conf.ssl" :
    content => template('revelry/nginx.conf.erb'),
    notify  => Service['dev.nginx']
  }

  file { "${nginx::config::sitesdir}/ssl-site-example.conf":
    ensure => present,
    mode => '0555',
    source => 'puppet:///modules/revelry/ssl-site-example.conf',
  }
}
