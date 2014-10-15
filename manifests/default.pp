exec{ 'apt-get update':
	command => '/usr/bin/apt-get update',
	timeout => 0
}


package{ "jenkins":
	ensure => present,
	require => Exec['apt-get update']
}

service{ "jenkins":
	ensure => running,
	require => Package['jenkins']
}