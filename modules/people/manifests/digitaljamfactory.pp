class people::digitaljamfactory {
  include people::digitaljamfactory::applications
  service {"dev.ngix": 
    ensure => "stopped",
  }

  service {"dev.dnsmasq": 
    ensure => "stopped",
  }
  
  package { "watch":
    ensure => present,
  }
  
  package { "wget":
    ensure => present,
  }

  package { "ssh-copy-id":
    ensure => present,
  }
  
  package { "phantomjs":
    ensure => present,
  }
  
  package { "sqlite":
    ensure => present,
  }


  package { "heroku-toolbelt":
    ensure => present,
  }
}

