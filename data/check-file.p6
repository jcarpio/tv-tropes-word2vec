#!/usr/bin/env raku

my @lines = "txt/trope_vectors_format2.txt".IO.lines;

for @lines -> $l {
    my @components = $l.split( /\s+/ );
    say @components if  @components.elems < 201;
}
