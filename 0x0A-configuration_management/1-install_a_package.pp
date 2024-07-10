# this is a SDL script that intalls a package flask from pip3 of version 2.1.0
package { 'python3-pip':
  ensure => 'installed',
}
package { 'werkzeug':
  ensure   => 'installed',
  provider => 'pip3',
}
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip', 'werkzeug'],
}
