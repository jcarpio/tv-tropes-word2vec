#!/usr/bin/env perl 
#
# https://blog-en.openalfa.com/how-to-read-and-write-json-files-in-perl 

use strict;
# use warnings;

use Algorithm::Combinatorics qw(combinations);


binmode STDOUT, ":utf8";
use utf8;
 
use JSON;

my $DEBUG = 1;
my $max_tropes = 10;
my $min_tropes = 7;
my $ngram_size = 7;

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

foreach $key (keys %{$data}) { # foreach film name
  $film_data = $data->{$key};
  my $num_tropes = scalar @{$film_data};
  if ($DEBUG) { print "film: $key num_tropes: $num_tropes\n"; }
  if ($num_tropes > $max_tropes || $num_tropes == $min_tropes) {
     delete $data->{$key}; # remove film
  }
  
  foreach my $value (@{$film_data}) { # creating tropes set
     $tropes{$value}= "";
  }
}

open my $fh, ">", "tropes_set.txt";
foreach $key (keys %tropes)
{
   # if (!$DEBUG) { print "$key\n"; }ç
   print $fh "$key\n";
}
close $fh;

open my $fh, ">", "$file_name" . "_less_than_10.json";
print $fh encode_json($data);
close $fh;


# creating combinations n-grams of n_grams_size
foreach $key (keys %{$data}) { # foreach film name remove tropes
                               # not included in selected tropes set
   $film_data = $data->{$key};
   my $num_tropes = scalar @{$film_data};
   if ($num_tropes >= $ngram_size) {
      my $combinat = combinations(\@{$film_data}, $ngram_size);
      print "combinations of $ngram_size from: ".join(" ",@{$film_data})."\n";
      print "-" .("--" x scalar(@{$film_data}))."\n";
      while(my $combo = $combinat->next) {
         print "@{$combo}\n";
      }
   }
   print "\n";
}
