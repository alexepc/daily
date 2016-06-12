package test5perl;
use strict;
use warnings FATAL => 'all';

$abc = "#";
while (length($abc) < 8){
    print $abc;
    print "\n";
    $abc = $abc."#";
}
