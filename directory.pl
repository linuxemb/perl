#!/usr/bin/perl -w


opendir (TD, "/home/vagrant/perl") || die "cant not open /tmp: $!";
while ($file= readdir TD) {
		open (FILEH, "/home/vagrant/perl/$file") || die "Can not opne $file: $!\n";
		#process file here...
		 @staff=<FILEH>;
		foreach $file (@staff)
             {
		     print $file;
	     }
                close(FILEH);		
	}
	closedir(TD);
