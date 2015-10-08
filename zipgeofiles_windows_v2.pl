#!/bin/perl -w
# Creates a zip file, adding like-named files.
# Usage: must be executed in the directory where the files are held in UNIX/Linux
# This version includes handling files with spaces in them.
#Marcel Fortin
my $extension = ".shp";

use strict;
open(list_of_files, "dir *$extension /b |");
my @fileslist = <list_of_files>;
my $i;
my $like_file;
foreach $i (@fileslist) {
	print "$i\n";
	$like_file = substr($i, 0,-5); 
#  system("zip $like_file.zip $like_file.*");
  system("zip -add \"$like_file\".zip \"$like_file\".*");
}
