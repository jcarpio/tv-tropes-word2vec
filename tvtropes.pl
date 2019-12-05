#!/usr/bin/perl
#
use strict;
# use warnings;
 
binmode STDOUT, ":utf8";
use utf8;
 
use JSON;


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
  print "film: $key num_tropes: $num_tropes\n";
}

