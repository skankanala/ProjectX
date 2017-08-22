#!/usr/bin/perl
use strict;
my $count = <STDIN>;
my @matrix;
my $x;
my $i;
my $j;
my $k;
my $p;
my $q;
my $check=0;
for ($i=0;$i<$count;$i++)
{
    my $row = <STDIN>;
    for ($j=0;$j<$row;$j++)
    {
        $x = <STDIN>;
        chomp $x;
        my @x_val = split(/\s/,$x);
         for ($k=0;$k<$row;$k++)
         {
            $matrix[$j][$k]= $x_val[$k];
         }
    }
 #   print $row;
    for ($j=0;$j<$row;$j++)
    {
           for ($k=0;$k<$row;$k++)
           {
                for ($p=0;$p<$row;$p++)
                {
                    for ($q=0;$q<$row;$q++)
                    {
                                    if(($matrix[$j][$k] > $matrix[$p][$q]) & ($j<=$p) & ($k<=$q))
                                    {
                                            #print " $matrix[$j][$k] < $matrix[$p][$q]) and ($j<=$p) and ($k<=$q)\n";
                                            $check++;
                                    }
                    }
                }
            }
    }
    print "$check\n";
    $check=0;
}

