#!/user/bin/perl
use strict;
use File::Find;

sub wanted {

	if ($_ eq "important.doc") {
    print $File::Find::name;
    print "\n";

	}

}

find \&wanted, '/home';




