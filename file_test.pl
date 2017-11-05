print "savedata to what file?" ;
$filename =<STDIN>;
chomp $filenam;

if (-s $filename) {
warn "$file contents will be overwritten\n";#warn "$file last updated ", -M $filename, "days ago"\n";
}
