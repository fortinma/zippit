#!/bin/perl -w
# Creates a zip file, adding like-named files.
# Usage: must be executed in the directory where the files are held in UNIX/Linux
# This version includes handling files with spaces in them.
#Marcel Fortin


my $extension = ".dwg";

use strict;
open(list_of_files, "ls *$extension |");
my @fileslist = <list_of_files>;
my $i;
print "$i\n";
my $like_file;
foreach $i (@fileslist) {
  $like_file = substr($i, 0,-5);
  system("zip \"$like_file\".zip \"$like_file\".*");
}
