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


}

