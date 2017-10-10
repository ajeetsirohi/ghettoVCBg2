#!/usr/bin/perl
# This script outputs a list of all VirtualMachines found on the target vCenter Server or
# ESX system. Script users must provide logon credentials. 

use strict;
use warnings;
use VMware::VIRuntime;


my %opts = (
   vm_outputfile => {
      type => "=s",
      help => "Name of the Output VM file",
      required => 1,
   }
);


# Parse all connection options (both built-in and custom), and then
# connect to the server
Opts::add_options(%opts);
Opts::parse();
Opts::validate();
Util::connect();


my @vmlist = ();
my $vm_outputfile = Opts::get_option('vm_outputfile');
my $vm_views = Vim::find_entity_views(view_type => 'VirtualMachine');

# Process the findings and output to the file
foreach my $vm_view (@$vm_views) {
	push @vmlist, $vm_view->name;
}

&outputFile(@vmlist);

# Disconnect from the server
Util::disconnect();


sub outputFile {
        my (@list) = @_;

        print "Generating output file \"$vm_outputfile\" ...\n";
        open(LOG,">$vm_outputfile");
        foreach(@list) {
                print LOG $_ . "\n";
        }
        close(LOG);
}
