class test {
	package {apache2:
		ensure =>"installed",
		allowcdrom => "true",
	}

	file {"/var/www/html/index.html":
		content => template ("test/index.html"),
		notify => Service["apache2"],
	}
	service {"apache2":
		ensure => "running",
		enable => "true",
		provider => "systemd",
	}

}
