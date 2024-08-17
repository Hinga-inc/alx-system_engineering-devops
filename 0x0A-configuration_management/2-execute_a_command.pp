# this is puppet sdl script that executes a command that kills a process
exec { 'pkill':
  command => 'pkill -f killmenow',
  path    => '/usr/bin'
}
