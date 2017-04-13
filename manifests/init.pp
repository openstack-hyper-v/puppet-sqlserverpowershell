# === Class: windows_sqlserverpowershell
#
# This module installs sqlserverpowershell on Windows systems. It also adds an entry to the
# PATH environment variable.
#
# === Parameters
#
# [*url*]
#   HTTP url where the installer is available. It defaults to main site.
# [*package*]
#   Package name in the system.
# [*file_path*]
#   This parameter is used to specify a local path for the installer. If it is
#   set, the remote download from $url is not performed. It defaults to false.
#
# === Examples
#
# class { 'windows_sqlserverpowershell': }
#
# class { 'windows_sqlserverpowershell':
#   $url     => 'http://192.168.1.1/files/sqlserverpowershell.exe',
#   $package => 'sqlserverpowershell version 1.8.0-preview201221022',
# }
#
# === Authors
# Vijay Tripathi <vijayt@microsoft.com>
#
# === Copyright
#
# Copyright 2016 Vijay Tripathi.
#
#
class sqlserverpowershell (
) {
  package { 'sql2012.powershell':
    ensure   => installed,
    provider => chocolatey,
  }
  package { 'sql2012.smo':
    ensure   => installed,
    provider => chocolatey,
  }
  package { 'sql2012.clrtypes':
    ensure   => installed,
    provider => chocolatey,
  }
}
