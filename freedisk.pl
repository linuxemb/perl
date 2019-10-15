#!/usr/bin/perl -w
#
my(@dir, $free);
@dir = `df -k .`;
$free =(split(/\s+/, $dir[$#dir]))[3];
$free = $free *1024;

print "$free\n" ;
