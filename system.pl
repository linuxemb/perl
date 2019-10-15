#!/usr/bin/perl -w
#use strict;
#print scalar locatime (stat("boot_count.pl"))[9];
#print scalar stat("boot_count.pl")[9];
#system("ls -lF");

#print system docs
#if(system("perldoc -f system"))
#	{
		#		print "your docs in not nstalled !\n";
		#}

my($dirs, $size, $total);

my @userarray =  <STDIN>;

while(userarray)
#while(<STDIN>)
{
chomp;
$total++;
if (-d $_)
	{
	$dirs++;
	print "$_ \n";
	next;
	}
		$size +=(stat($_))[7];
	print "$_\n";
}
print "$total files, $dirs directories\n";
print "Average file size: ", $size/($total-$dirs), "\n";
