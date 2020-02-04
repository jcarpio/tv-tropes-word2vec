#!/usr/bin/env perl
#
# https://blog-en.openalfa.com/how-to-read-and-write-json-files-in-perl 

use strict;
use warnings;

use List::Util qw/shuffle/;
use Algorithm::Combinatorics qw(combinations);


binmode STDOUT, ":utf8";
use utf8;
 
use JSON;

my $num_args = $#ARGV + 1;
if ($num_args != 4) {
    print "Usage: tvtropes.pl <json_file> <max_tropes> <ngram_size> <add_film_name>\n";
    exit;
}

my $DEBUG = 1;
my $max_tropes = $ARGV[1];
my $min_tropes = $ARGV[2];
my $ngram_size = $ARGV[2];
my $add_film_name = $ARGV[3];
my $output_dir = "output";
my $shuffle = 1;

my $json;

my $file_name = $ARGV[0] // "tvtropes.json";
{
  local $/; #Enable 'slurp' mode
  open my $fh,'<', "$file_name" or die "can't open file: $!";
  $json = <$fh>;
  close $fh;
}

my $key;
my $data = decode_json($json);
my %tropes;
my $film_data;

open my $fh_films, ">", "$output_dir/films.txt";
open my $fh, ">", "$output_dir/films_$max_tropes" . "_taken_$ngram_size.txt";

foreach $key (keys %{$data}) { # foreach film name
  $film_data = $data->{$key};
  my $num_tropes = scalar @{$film_data};

  print $fh_films "$key num_tropes: $num_tropes\n"; } # create all films file

  if ($num_tropes <= $max_tropes && $num_tropes >= $min_tropes) {
     print $fh "$key num_tropes: $num_tropes\n";
     foreach my $value (@{$film_data}) { # creating tropes set
        $tropes{$value}= "";
     }
  } else {
     delete $data->{$key}; # remove film
  }
}
close $fh;
close $fh_films;

open $fh, ">", "$output_dir/tropes_set_$max_tropes". "_taken_$ngram_size.txt";
foreach $key (keys %tropes)
{
   print $fh "$key\n";
}
close $fh;

open $fh, ">", "$output_dir/less_than_$max_tropes" . "_taken_$ngram_size.json";
print $fh encode_json($data);
close $fh;

open $fh, ">", "$output_dir/ngrams_$max_tropes" . "_taken_$ngram_size" . "_add_film_name$add_film_name.txt";
# creating combinations n-grams of n_grams_size
foreach $key (keys %{$data}) { # foreach film name remove tropes
                               # not included in selected tropes set
   $film_data = $data->{$key};
   my $num_tropes = scalar @{$film_data};
   if ($num_tropes >= $ngram_size) {
      my $combinat = combinations(\@{$film_data}, $ngram_size);
      if ($DEBUG) { 
         print "combinations of $ngram_size from: ".join(" ",@{$film_data})."\n";
         print "-" .("--" x scalar(@{$film_data}))."\n";
      }

      while(my $combo = $combinat->next) {
         my $middle = int($num_tropes/2); # integer division
         splice @{$combo}, $middle, 0, "$key"; # insert film name in the middle of tropes array
         my @new_array = shuffle(@{$combo});
         if ($shuffle) {
            print $fh "@new_array. "; 
         } else {
            @new_array = @{$combo};
            print $fh "@new_array. ";
         } 
      }
      print $fh "\n";
   }
   print $fh "\n";
}

close $fh;
