class virtual::groups {

 # use 600 - 999 for groups

  @group { 'allstaff':
    ensure => present,
    gid    => 600,
  }
  @group { 'techops':
    ensure => present,
    gid    => 601,
  }
  @group { 'sysadmin':
    ensure => present,
    gid    => 666,
  }
  @group { 'developers':
    ensure => present,
    gid    => 667,
  }
  @group { 'prosvc':
    ensure => present,
    gid    => 668,
  }
  @group { 'operations':
    ensure => present,
    gid    => 673,
  }
  @group { 'git':
    ensure => present,
    gid    => 674,
  }
  @group { 'enterprise':
    ensure => present,
    gid    => 675,
  }
  @group { 'release':
    ensure => present,
    gid    => 676,
  }
  @group { 'interns':
    ensure => present,
    gid    => 677,

#
# Service Groups
#
  @group { 'hudson':
    ensure => present,
    gid    => 620,
  }

  @group { 'osqa':
    ensure => present,
    gid    => 621,
  }

  @group { 'patchwork':
    ensure => present,
    gid    => 622,
  }

#
# Customers
# 1050 - 2000

  @group { 'vmware':
    ensure => present,
    gid    => 1050,
  }

  @group { 'motorola':
    ensure => present,
    gid    => 1051,
  }

  @group { 'nokia':
    ensure => present,
    gid    => 1052,
  }

  @group { 'blackrock':
    ensure => present,
    gid    => 1053,
  }

  @group { 'secureworks':
    ensure => present,
    gid    => 1054,
  }

  @group { 'bioware':
    ensure => present,
    gid    => 1055,
  }

  @group { 'wealthfront':
    ensure => present,
    gid    => 1056,
  }

  }


#
# Functional
#

  @group { 'www-dev':
    ensure => present,
    gid    => 678,
  }

  @group { 'contractors':
    ensure => present,
    gid    => 679,
  }


}

