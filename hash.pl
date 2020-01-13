#!/usr/bin/perl 
# 1st way of init hash
#%Books{Dune} = 'Frank herber';
%food = (apple => 'fruit',
'pear' => 'fruit',
'carot' => 'vege');

foreach $film (keys %food) {
print "$film \n";
}
####### 2nd way of init hash
$fod {'ae'} = 'fruit';
$fod {'pr'} = 'fruit';
$fod {'carot'} = 'vg';

foreach $item (keys %fod) {
print "$item \n";
}

########################## Determing frequency distributions

#While (<STDIN>) {
#While ( /(\w[\w-]*)/g ) {
		#iterat over words, settng $1 to each
		$words{$1}++;
		#	}
		#		}
foreach (keys %Words)
{
	print "$_ $Words{$_}\n";
}
######################test key in hash
#
if ( exists $Hash{keyval})  
{
}
#remove keys from hash
#
delete $Hash{keyval};
$Hash = ();  #remove all keys and values from hash

###############   find unique lemtns in a array

print "seen############################## \n";
@fishwords = ('one', 'two', 'fish', 'fish');
%seen = ();
foreach (@fishwords) {
	$seen{$_} = 1;
}
#seen is hash, use to match the key to fishwords.
#
@uniquewords = keys %seens;
foreach $uniq (@uniquewords)
{
print "seen, $uniq, \n";

}
@uniquewords = keys %seen;

foreach $index (@fishwords)
{
	print("fish words is, $index, \n");
}
foreach $index (@uniquewords)
{
	print("unique fish words is, $index, \n");
}
################### sort the key of yyhash
%Words = %fod;
foreach (sort keys %fod ) {
print "sorted key in fod is, $_ $fod($_) \n";
}
#################a  Computing intersection and difference of Arrays 
@stars = ('R.reagan', 'C.Eastwood');
@pols = ('N.Gingrish','C.Eastwood');

%seen = ();
foreach (@stars) {
	$seen{$_} = 1;
}

@intersection = grep($seen{$_}, @pols);
foreach $index (@intersection) {
print "intersection = , $index \n ";
}

@difference = grep(!$seen{$_}, @pols);
foreach $index (@difference)
{
print "differnece  , $index \n ";
}

