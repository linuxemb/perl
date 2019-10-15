#!/usr/bin/perl -w

use strict;
print "Directory to search:";
my $dir= <STDIN>; chomp $dir;

print "Patterrn to look for :";
my $pat = <STDIN>; chomp $pat;

my($file);

opendir(DH, $dir) || die "can not open $dir: $!";

while ($file = readdir DH) {
	next if (-d "$dir/$file");
	if(!open(F,"$dir/$file")) {
	warn "Can not search: $file: $!";
	next;
	}
	while(<F>) {
	if (/$pat/) {
		print "$file:   $_";
		}
		
	}
	close(F);


}
close(FD);

