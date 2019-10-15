!#/user/bin/perl
print "Savet dat eto waht file?";
$filename=<STDIN>;
chomp $filename;
if (-s $filename and -M $filename >0,1)
{
	warn "$file contents will be overwrite!\n";
	warn "file was last updated", 
	-M $filename, "days ago. \n";
}

