# A Chassis extension to install yarn on your Chassis Box.
class yarn (
	$config,
	$path = '/vagrant/extensions/yarn',
) {
	# Puppet 3.8 doesn't have the .each function and we need an alternative.
	define install {
		exec { "Installing yarn ${name}":
			path    => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
			cwd     => $name,
			command => 'yarn install',
			require => [ Exec['install yarn'] ],
		}
	}

	if ( ! empty($config[disabled_extensions]) and 'chassis/yarn' in $config[disabled_extensions] ) {
		exec { 'uninstall yarn':
			path    => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
			command => 'npm uninstall -g yarn',
		}
	} else {
		exec { 'install yarn':
			path    => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
			command => 'npm install -g yarn',
			require => [ Class['nodejs'] ],
			unless  => 'which yarn',
		}

		if ( $config[yarn] and $config[yarn][paths]) {
			install { $config[yarn][paths]: }
		}
	}
}
