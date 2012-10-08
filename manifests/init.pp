class ssh {

  case $::osfamily {
    'RedHat': { include ssh::redhat }
    'Debian': { include ssh::debian }
    default:  { notify { "Class[ssh] does not support $::osfamily": } }
  }

}
