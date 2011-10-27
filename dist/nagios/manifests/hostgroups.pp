# Class: nagios::hostgroups
#
# This class configures the Nagios contacts
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class nagios::hostgroups {

  include nagios::params

  file {
    '/etc/nagios3/conf.d/hostgroups_nagios2.cfg':
      mode   => '0644',
      before => Service[$::nagios::params::nagios_service],
  }

  $hostgroups = [
    "dc1",
    "office",
    "cloaked",
    "world"
  ]

  nagios_hostgroup {
    $hostgroups:
      target => '/etc/nagios3/conf.d/hostgroups_nagios2.cfg',
      notify => Service[$::nagios::params::nagios_service],
  }

  #Nagios_hostgroup <| |>

}
