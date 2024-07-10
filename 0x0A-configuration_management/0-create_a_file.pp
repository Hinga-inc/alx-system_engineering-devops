# this is a puppet sdl script that creates a new file name and ensures it is a file and creates the perissions owner group ant it content
file { '/tmp/school':
  ensure  => 'file',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love puppet',
  mode    => '0744'
}
