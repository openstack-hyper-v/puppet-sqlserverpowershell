puppet-windows_sqlserverpowerShell
==============
This module installs sqlserverpowerShell on Windows machines, adding the binary to the PATH environemnt variable.

Basic usage
-----------
The basic scenario allows the user to install sqlserverpowerShell fetching the installer from the main site:

    class { 'windows_sqlserverpowerShell': }

Contributors
------------
 * Vijay Tripathi <vijayt@microsoft.com>

