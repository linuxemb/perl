#!/usr/bin/perl -w

#my @files = glob('/usr/include/*.h');
#foreach $index (@files)
#{
#	print $index \n;
#}

#text or doc files that contain 1999
my @curfiles=glob('*perl*');
#my @curfiles=glob('*perl*.{txt,doc,perl}');

foreach $idx (@curfiles)
{
	print $idx ;
}

# print a nubed list of filenames
$count=1;
while ($name=glob('*')) {
	print "$count, $name\n";
	$count++;
}
 
