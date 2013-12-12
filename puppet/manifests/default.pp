Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin']
}

# --- Preinstall Stage ---------------------------------------------------------

stage { 'pre': before => Stage['rvm-install'] }

class run_pre {

  exec { 'apt_update':
    command => 'apt-get -y update',
    unless => "test -e ${home}/.rvm"
  }

  package { 'nodejs':
    ensure => installed
  }
  Exec['apt_update']->Package['nodejs']
}

class { 'run_pre' :
  stage => 'pre',
}

# --- Ruby ---------------------------------------------------------------------

class install_ruby {

  class { 'rvm': }

  rvm::system_user { vagrant: ; }

  rvm_system_ruby {
    'ruby-2.0.0-p353':
    ensure => 'present',
    default_use => true
  }

  rvm_gem {
    'bundler':
    name => 'bundler',
    ensure       => latest,
    ruby_version => 'ruby-2.0.0-p353',
  }

  exec { 'gem_update':
    command => '/usr/local/rvm/bin/rvm ruby-2.0.0-p353 do gem update'
  }

  Rvm_system_ruby['ruby-2.0.0-p353']->Rvm_Gem['bundler']->Exec['gem_update']
}

class { 'install_ruby' : }




