#!/usr/bin/perl -w
use strict;

my @employees= (
	'Smisth, Bob, 123101, 9,34,40',
	'Frankin,Alice,132923,10.15,34'
);

sub print_emp {
	my($last,$first,$emp, $hourly, $time) =
	 split(',', $_[0]);
	 my $fullname;
	 $fullname = sprintf("%s  %s" , $first, $last);
		 printf( "%6d %20s %6.2f %3d %7.2f\n",
		 $emp, $fullname, $hourly, $time,
		 ($hourly * $time) + .005);
		 }

	@employees = sort {
	my ($L1, $F1) = split(',', $a);
	my ($L2, $F2) = split (',',$b);
	return ($L1 cmp $L2 
	||  
	$F1 cmp $F2
	);
} @employees;

foreach (@employees) {
print_emp($_);
}


