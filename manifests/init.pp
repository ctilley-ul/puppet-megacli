# Main class includes the install class.
#
# This class manages the megacli package on RedHat base distros
# and includes all other classes
#
# @param package_ensure
#   Whether to install the MegaCli package, and what version to install. Values: 'present', 'latest', or a specific version number.
#   Default value: 'present'.
#
# @param package_file
#   RPM package file for installing MegaCli package
#
# @param package_manage
#   Whether to manage the MegaCli package. Default value: true.
#
# @param package_name
#   Specifies the MegaCli package to manage. Default value: ['MegaCli'].
#
# @param package_version
#   Specifies the package version to install
#
# @example
#   include megacli
#   
class megacli (
  String $package_ensure,
  String $package_file,
  Boolean $package_manage,
  Array[String] $package_name,
  String $package_version,
) {

  contain megacli::install

}
