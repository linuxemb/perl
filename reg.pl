#!/usr/bin/perl 
$_=<STDIN>;
@input = $_;
chomp;
s/^\s+//;   # remove leading space

print "you input is:", "\t", $_ , "\n";
s/in/at/;
print "modymied  input is:", "\t",$_ , "\n";
#match  5 digits
if(/\d{5}/)
{
print "yes";

print "5 digits is:", "\t",$_ , "\n";
}
if (/(\d{3})-(\d{3})-(\d{4})/) {
	print "the area code is,", "\t",$1, "\n";
	print "the phone number is  is,", "\t",$2, "-",$3, "\n";
	}


#spit using map let input been split based on spce and save toword
	@words = map {split ' ', $_} @input;
foreach $word (@words)
{
	print("word is, $word, \n");
}
