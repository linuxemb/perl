#!/usr/bin/perl  -w

$string = 'an apple aaron';

$length = length($string)-1;

$guessed = $string;

while ($guessed =~ /[^ |*]/) {

  print "guess a letter: ";
  
  $letter = <STDIN>;
  
  chomp $letter;
  
  $guessed =~ s/$letter/*/g;
      
  for ($x=0; $x<=$length; $x++) {
    if (substr($guessed, $x, 1) eq "*") {
      print substr($string, $x, 1);
    }
    else {
      print "*" unless (substr($string, $x, 1) eq " ");
      print " " if (substr($string, $x, 1) eq " ");
    }
  }
  
  print "\n";

}
}

print "GUESSED CORRECTLY!\n";
