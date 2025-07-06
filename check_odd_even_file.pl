print "==== Number Odd/Even Checker ====\n\n";

my $filename = 'number.txt';
open(my $fh, '<:encoding(UTF-8)', $filename) or die "Could not open file '$filename'\n$!";

while (my $line = <$fh>) {
    $line =~ s/^\s+|\s+$//g; # remove leading and trailing whitespace
    next if $line eq '';  # skip empty line

    if ($line =~ /^-?\d+$/) {
        if ($line % 2 == 0) {
            print "$line is even number\n";
        } else {
            print "$line is odd number\n";
        }
    } else {
            print "$line is invalid number\n";
    }
}

close($fh);