# this is a puppet sdl script that creates a new file name and ensures it is a file and creates the perissions owner group ant it content

file { '/tmp/school':
  ensure  => 'file',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love puppet',
}
