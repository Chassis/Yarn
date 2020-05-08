# Puppet 3.8 doesn't have the .each function and we need an alternative.
define install_yarn {
  if is_hash($name) {
    exec { "Executing: ${name[command]} in ${name[path]}":
      path      => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
      cwd       => $name[path],
      command   => $name[command],
      require   => [ Exec['install yarn'] ],
      logoutput => true
    }
  } else {
    exec { "Executing: yarn install in ${name}":
      path      => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
      cwd       => $name,
      command   => 'yarn install',
      require   => [ Exec['install yarn'] ],
      logoutput => true
    }
  }
}