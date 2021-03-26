#!/usr/bin/perl

BEGIN{
    push(@INC, ".","..","../..");
}

use strict;
use warnings;

use Data::Dumper;
use JSON;


#perl data structure goes here
my $perl_hash = {'key1' => 'testing1',
              'key2' => {'subkey1' => 'subtesting1',
                         'subkey2' => 'subtesting2'},
              'key3' => 'last data'};

#optional input
$input = <STDIN>;

#do something with your input
$perl_hash{'key4'} = $input;

my $json_data = to_json($perl_hash);
print "$json_data";