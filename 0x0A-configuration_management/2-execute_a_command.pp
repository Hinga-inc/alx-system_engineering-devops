# this is puppet sdl script that executes a command that kills a process
exec { 'killmenow':
  command     => '/usr/bin/pkill -f killmenow',
  refreshonly => true
}
