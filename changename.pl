#!/usr/bin/perl -w
#
use strict;
my ($dir, $oldpat, $newpat);
print "Directory to search:";
 $dir= <STDIN>; chomp $dir;

print " old Patterrn to look for :";
$oldpat = <STDIN>; chomp $oldpat;

print " new  Patterrn to replace :";
 chomp($newpat = <STDIN>); 


opendir(DH, $dir) || die "can not open $dir: $!";

my  @files = readdir DH;
close(DH);

my $oldname;
foreach(@files) {

	$oldname =$_;
        s/$oldpat/$newpat/;
 next if (-e "$dir/$_");
   if(! rename "$dir/$oldname", "$dir/$_") {
	  warn "Cound not rename $oldname to $_: $!" ;
		 }   else
  	  {
		 print "File $oldpat name renamed to $_\n";
          }
 } 

