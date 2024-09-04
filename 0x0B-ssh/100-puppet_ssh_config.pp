# Puppet manifest to configure SSH client for kamau-hinga

# Ensure the SSH config directory exists
file { '/home/kamau-hinga/.ssh':
  ensure => directory,
  owner  => 'kamau-hinga',
  group  => 'kamau-hinga',
  mode   => '0700',
}

# Ensure the SSH config file exists
file { '/home/kamau-hinga/.ssh/config':
  ensure => file,
  owner  => 'kamau-hinga',
  group  => 'kamau-hinga',
  mode   => '0600',
}

# Add the IdentityFile configuration
file_line { 'Declare identity file':
  path  => '/home/kamau-hinga/.ssh/config',
  line  => '    IdentityFile /home/kamau-hinga/.ssh/school',
  match => '^    IdentityFile',
}

# Disable password authentication
file_line { 'Turn off passwd auth':
  path  => '/home/kamau-hinga/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^    PasswordAuthentication',
}
