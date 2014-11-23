class php::memcached {
  require php::packages

  file { '/etc/supervisor/conf.d/memcached.conf':
    ensure => present,
    content => template('php/memcached.conf.erb'),
    mode => 644
  }
}