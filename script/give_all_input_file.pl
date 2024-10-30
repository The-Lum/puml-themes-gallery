
# Author: The-Lum
# Script: 
# The script generates the list of all the `.puml` input files
# * list of all `.puml` files of the `input` directory
# * without `path` and `ext`

use strict;
use warnings;
use autodie;

# Input file: all the .puml file
my @files = <input/*.puml>;

# Output file
open(my $fho, '>:encoding(UTF-8)', '_data/diagrams.csv');

print $fho "name\n";
foreach my $f (@files) {
    (my $file_no_ext = $f) =~ s/\.[^.]+$//;
    $file_no_ext =~ s|^.*/||;
    print $fho $file_no_ext;
    print $fho "\n";
}
