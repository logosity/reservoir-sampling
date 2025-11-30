sub reservoir_sample {
    my ($filename) = @_;
    open my $fh, '<', $filename;
    my $line;
    rand($.) < 1 && ($line = $_) while <$fh>;
    close $fh;
    return $line;
}

my ($data_file_name, $iterations) = @ARGV;
srand;

for (1..$iterations) {
    print reservoir_sample($data_file_name);
}
