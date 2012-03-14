class gitolite::data {

  ##############################################################################
  # gitolite::package
  ##############################################################################
  $gitolite_package_source = 'backports'

  ##############################################################################
  # gitolite::instance
  ##############################################################################
  $gitolite_instance_manage_user = true
  $gitolite_instance_user  = 'git'
  $gitolite_instance_group = 'git'
  $gitolite_instance_home  = '/home/git'


  ##############################################################################
  # gitolite::rc
  ##############################################################################
  $gitolite_rc_gl_wildrepos  = '0'
  $gitolite_rc_gl_wildrepos_defperms = 'R @all'
  $gitolite_rc_gl_wildrepos_perm_cats = 'READERS WRITERS'

  $gitolite_rc_projects_list = "${gitolite_instance_home}/projects.list"
  $gitolite_rc_repo_umask    = '0077'

  $gitolite_rc_gl_adc_path   = undef
}
