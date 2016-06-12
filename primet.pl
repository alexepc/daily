#!/usr/bin/perl

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime(time);

my @abbr = qw( января февраля марта апреля мая июня июля августа сентября октября ноября декабря );

my @dayabbr = (1..31);

my $dat= "$dayabbr[$mday-1] $abbr[$mon]";

open HANDLE, "cal_primet.txt";

while (<HANDLE>){
    print if /^$dat/;

}
close (HANDLE);

