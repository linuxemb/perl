#!/usr/bin/perl


open(MYFILE,"a.txt") || die "openfile $!";

@stuff=<MYFILE>;
close (MYFILE);

foreach(reverse(@stuff)) {

	print scalar(reverse($_));
}

while(<STDIN>)

{

(	$firstchar)  = split(//, $_);
	print "The 1s cha is $firstchar\n";
}


open(MYFILE,"a.txt") || die "openfile $!";
while(<MYFLIE>)
{
print $_;
}
