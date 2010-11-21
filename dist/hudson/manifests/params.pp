# Class: hudson::params
#
# This class contains the parameter for the hudson module
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class hudson::params {

  $hudson_alias = 'hudson.puppetlabs.com'

  $jetty_packages = [ 'jetty', 'libjetty-java', 'jsvc', 'libcommons-daemon-java', 'sun-java6-jdk', 'sun-java6-jre', 'libjetty-extra', 'libjetty-extra-java', 'build-essential', 'ruby-dev', 'libaugeas-ruby' ]
  

  $build_packages_gems = [ 'ci_reporter', 'mocha', 'rake', 'rspec', 'rails', 'mongrel', 'stomp', 'json' ]

  case $operatingsystem {
    'ubuntu': {
      $slave_packages = [ 'sun-java6-jdk', 'sun-java6-jre' ]
    }
    'centos': {
      $slave_packages = [ 'java' ]
    }
  }

}


