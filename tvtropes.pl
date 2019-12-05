#!/usr/bin/perl
#
# https://blog-en.openalfa.com/how-to-read-and-write-json-files-in-perl 

use strict;
use warnings;
 
binmode STDOUT, ":utf8";
use utf8;
 
use JSON;

my $DEBUG = 0;
my $max_tropes = 10;

my $json;
{
  local $/; #Enable 'slurp' mode
  open my $fh, "<", "tvtropes.json";
  $json = <$fh>;
  close $fh;
}
my $data = decode_json($json);

foreach my $key (keys %{$data}) {
  my $film_data = $data->{$key};
  my $num_tropes = scalar @{$film_data};
  if ($DEBUG) { print "film: $key num_tropes: $num_tropes\n"; }
  if ($num_tropes <= $max_tropes) {
     
  } 

}

# # Output to screen one of the values read
# print "Boss' hobbies: " .
#      $data->{'boss'}->{'Hobbies'}->[0] . "n";
# Modify the value, and write the output file as json
# $data->{'boss'}->{'Hobbies'}->[0] = "Swimming";
# open my $fh, ">", "data_out.json";
# print $fh encode_json($data);
# close $fh;
