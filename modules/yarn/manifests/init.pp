class yarn (
	$config,
	$path = "/vagrant/extensions/yarn",
) {
	exec { 'install yarn':
		path        => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ],
		command     => 'npm install -g yarn',
		require     => [ Class['nodejs'] ],
		unless  => 'which yarn',
	}
}
