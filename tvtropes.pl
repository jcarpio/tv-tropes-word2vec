#!/usr/bin/perl
#
# https://blog-en.openalfa.com/how-to-read-and-write-json-files-in-perl 

use strict;
# use warnings;
 
binmode STDOUT, ":utf8";
use utf8;
 
use JSON;

my $DEBUG = 0;
my $max_tropes = 10;

my $json;

my $file_name = $ARGV[0];
{
  local $/; #Enable 'slurp' mode
  open my $fh,'<',$ARGV[0] or die "can't open file: $!";
  # open my $fh, "<", "tvtropes.json";
  $json = <$fh>;
  close $fh;
}

my $key;
my $data = decode_json($json);
my %tropes;
my $film_data;

foreach $key (keys %{$data}) {
  $film_data = $data->{$key};
  my $num_tropes = scalar @{$film_data};
  if ($DEBUG) { print "film: $key num_tropes: $num_tropes\n"; }
  if ($num_tropes > $max_tropes) {
     delete $data->{$key};
  }
  
  foreach my $value (@{$film_data}) {
     $tropes{$value}= "";
  }
}

foreach $key (keys %tropes)
{
   print "$key\n";
}


open my $fh, ">", "$file_name" . "_less_than_10.json";
print $fh encode_json($data);
close $fh;
# # Output to screen one of the values read
# print "Boss' hobbies: " .
#      $data->{'boss'}->{'Hobbies'}->[0] . "n";
# Modify the value, and write the output file as json
# $data->{'boss'}->{'Hobbies'}->[0] = "Swimming";
# open my $fh, ">", "data_out.json";
# print $fh encode_json($data);
# close $fh;
