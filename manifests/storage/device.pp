# This define creates a storage device declaration.  This informs the
# storage daemon which storage devices are available to send client backups to.
#
# @param device_name     - Bacula director configuration for Device option 'Name'
# @param media_type      - Bacula director configuration for Device option 'Media Type'
# @param device          - Bacula director configuration for Device option 'Archive Device'
# @param label_media     - Bacula director configuration for Device option 'LabelMedia'
# @param random_access   - Bacula director configuration for Device option 'Random Access'
# @param automatic_mount - Bacula director configuration for Device option 'AutomaticMount'
# @param removable_media - Bacula director configuration for Device option 'RemovableMedia'
# @param always_open     - Bacula director configuration for Device option 'AlwaysOpen'
# @param maxconcurjobs   - Bacula director configuration for Device option 'Maximum Concurrent Jobs'
# @param conf_dir
# @param device_mode
# @param device_owner
# @param device_seltype
# @param director_name
# @param group
#
define bacula::storage::device (
  String           $device_name     = $name,
  String           $media_type      = 'File',
  String           $device          = '/bacula',
  Bacula::Yesno    $label_media     = true,
  Bacula::Yesno    $random_access   = true,
  Bacula::Yesno    $automatic_mount = true,
  Bacula::Yesno    $removable_media = false,
  Bacula::Yesno    $always_open     = false,
  Integer          $maxconcurjobs   = 1,
  String           $conf_dir        = $bacula::conf_dir,
  Stdlib::Filemode $device_mode     = '0770',
  String           $device_owner    = $bacula::bacula_user,
  String           $device_seltype  = $bacula::device_seltype,
  String           $director_name   = $bacula::director_name,
  String           $group           = $bacula::bacula_group,
) {
  $epp_device_variables = {
    device_name     => $device_name,
    media_type      => $media_type,
    device          => $device,
    label_media     => $label_media,
    random_access   => $random_access,
    automatic_mount => $automatic_mount,
    removable_media => $removable_media,
    always_open     => $always_open,
    maxconcurjobs   => $maxconcurjobs,
  }

  concat::fragment { "bacula-storage-device-${name}":
    target  => "${conf_dir}/bacula-sd.conf",
    content => epp('bacula/bacula-sd-device.epp', $epp_device_variables),
  }

  if $media_type =~ '^File' {
    file { $device:
      ensure  => directory,
      owner   => $device_owner,
      group   => $group,
      mode    => $device_mode,
      seltype => $device_seltype,
    }
  }
}
