# A Chassis extension to install yarn on your Chassis Box.
class yarn (
	$config,
	$path = '/vagrant/extensions/yarn',
) {
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
	}
}
