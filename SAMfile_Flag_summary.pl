#!/usr/bin/perl -w
use warnings;
$samfile = $ARGV[0];
open FILEONE, $samfile ;
while (<FILEONE>)

{
chomp;
@array = split(/\t/, $_);


$samflag=$array[1];

$Flag_counts{$samflag}++;

}


foreach $key (sort keys %Flag_counts)
{
	print"$key\t$Flag_counts{$key}\n" 
}
