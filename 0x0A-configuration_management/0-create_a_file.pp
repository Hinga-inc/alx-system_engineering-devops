# this is a puppet sdl script that creates a new file name and ensures it is a file and creates the perissions owner group ant it content
file { '/tmp/school':
  ensure  => file,
  content => 'I love Puppet',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
}
