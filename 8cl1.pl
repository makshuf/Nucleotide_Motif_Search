#!/usr/bin/perl

use strict;
use warnings;

print 'Enter the file name containing the sequence: ';
my $filename = <>;
chomp $filename;

open(my $fh, '<', $filename) or die "Could not open file '$filename' $!";
my @file_lines = <$fh>;
close $fh;

print 'Enter the Motif sequence to be searched: ';
my $motif = <>;
chomp $motif;
print 'Read ' . scalar(@file_lines) . " lines at file: '$filename'\nmotif: '$motif'\n";

my ($line, $occurrences) = (0, 0);
foreach my $row (@file_lines) {
    $line++;
    next unless $row =~ /\Q$motif\E/;
    my @motif_index = ();
    my $position = 0;
    while((my $index = index $row, $motif, $position) >= 0) {
        push(@motif_index, $index);
        $position = $index + length $motif;
        # print $index, "\n";
    }
    print "Motif found on row#$line\tat position(s): " . join(', ', @motif_index) . ".\n";
    $occurrences += scalar @motif_index;
}

print "\nMotif '$motif' was " . ($occurrences ? "found $occurrences times" : 'not found') . " at file: '$filename'.\n";

__END__