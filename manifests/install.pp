# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include megacli::install
class megacli::install {

  if $megacli::package_manage {

    if $osfamily == 'Debian' and $facts['os']['name'] == 'Ubuntu' {
      
      package { $megacli::package_name:
        ensure => $megacli::package_ensure
      }

    } elsif $osfamily == "RedHat" {

      if $megacli::package_version == '8.07.14' {

        file { $megacli::package_file:
          ensure => present,
          path   => "/tmp/${megacli::package_file}",
          mode   => '0755',
          owner  => root,
          source => "puppet:///modules/megacli/rpms/${megacli::package_file}",
        }

        package { $megacli::package_name:
          ensure   => $megacli::package_ensure,
          provider => rpm,
          source   => "/tmp/${megacli::package_file}",
          require  => File[$megacli::package_file],
        }

      }   else {

        alert("MegaCli version ${megacli::package_version} not support. This class only supports MegaCli version 8.07.14 at present.")

      }

    } else {

      alert("${operatingsystem} not currently supported.")

    }

  }

}
