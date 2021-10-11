
# megacli

#### Table of Contents

1. [Module Description](#module-description)
2. [Setup - The basics of getting started with megacli](#setup)
    * [What megacli affects](#what-megacli-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with megacli](#beginning-with-megacli)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Module Description

The megacli module installs the MegaCLI package on RHEL and Ubuntu operating systems.

## Setup

### Beginning with megacli

`include megacli` is enough to ensure the package gets installed.

## Limitations

This module has been tested on CentOS 7, OEL7 and Ubuntu 16.04.

This module was developed to simply install the MegaCLI package to allow for monitoring tools to call it and monitor the RAID states.

## Development

Development on this module is welcome to better support RHEL base OS. Currently, MegaCLI is only available as a package on the Ubuntu repositories. RHEL based OS specifically reference the package RPM from the "file" section of this module.

## Contributors

To see who's already involved, see the [list of contributors.](https://github.com/ctilley-ul/puppet-megacli/graphs/contributors)
