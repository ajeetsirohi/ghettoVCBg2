# ghettoVCBg2
Script to back up VMs in ESXi remotely

Modified original work from William Lam to fit my needs:
1. Backup ESXi host from remote linux server instead of vMA virtual machine.
2. Backup to remote linux server instead of same ESXi host datastore.

Usage:

$ ./ghettoVCBg2.pl
Required command option 'vmlist' not specified.

Synopsis: ./ghettoVCBg2.pl OPTIONS


Command-specific options:
   --config_dir
      Name of directory containing VM(s) backup configurations
   --dryrun (default '0')
      Set to 1 to enable dryrun mode (default 0)
   --output (default '/tmp/ghettoVCBg2.log')
      Full path to output log (default /tmp/ghettoVCBg2.log)
   --vmlist (required)
      A file containing a list of virtual machine(s) to be backed up on host

Common VI options:
   --config (variable VI_CONFIG)
      Location of the VI Perl configuration file
   --credstore (variable VI_CREDSTORE)
      Name of the credential store file defaults to <HOME>/.vmware/credstore/vicredentials.xml on Linux and <APPDATA>/VMware/credstore/vicredentials.xml on Windows
   --encoding (variable VI_ENCODING, default 'utf8')
      Encoding: utf8, cp936 (Simplified Chinese), iso-8859-1 (German), shiftjis (Japanese)
   --help
      Display usage information for the script
   --passthroughauth (variable VI_PASSTHROUGHAUTH)
      Attempt to use pass-through authentication
   --passthroughauthpackage (variable VI_PASSTHROUGHAUTHPACKAGE, default 'Negotiate')
      Pass-through authentication negotiation package
   --password (variable VI_PASSWORD)
      Password
   --portnumber (variable VI_PORTNUMBER)
      Port used to connect to server
   --protocol (variable VI_PROTOCOL, default 'https')
      Protocol used to connect to server
   --savesessionfile (variable VI_SAVESESSIONFILE)
      File to save session ID/cookie to utilize
   --server (variable VI_SERVER, default 'localhost')
      VI server to connect to. Required if url is not present
   --servicepath (variable VI_SERVICEPATH, default '/sdk/webService')
      Service path used to connect to server
   --sessionfile (variable VI_SESSIONFILE)
      File containing session ID/cookie to utilize
   --url (variable VI_URL)
      VI SDK URL to connect to. Required if server is not present
   --username (variable VI_USERNAME)
      Username
   --verbose (variable VI_VERBOSE)
      Display additional debugging information
   --version
      Display version information for the script

Credits for this go to William Lam. https://communities.vmware.com/docs/DOC-9843 
