
# Author: The-Lum
# Script: 
# The script generates the list of all the `.puml` input files
# * list of all `.puml` files of the `collections/_diagrams/input` directory
# * without `path` and `ext`

use strict;
use warnings;
use autodie;

# Input file: all the .puml file
my @files = glob("collections/_diagrams/input/*.puml");

# Output file
open(my $fho, '>:encoding(UTF-8)', 'script/diagrams.csv');

foreach my $f (@files) {
    (my $file_no_ext = $f) =~ s/\.[^.]+$//;
    $file_no_ext =~ s|^.*/||;
    print $fho $file_no_ext;
    print $fho "\n";
}
