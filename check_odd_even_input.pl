print "Enter a number: ";
my $input = <STDIN>;
chomp($input);  # remove newline character

if ($input =~ /^-?\d+$/) {
    if ($input % 2 == 0) {
        print "$input is even number\n";
    } else {
        print "$input is odd number\n";
    }
} else {
    print "$input is invalid number\n";
}