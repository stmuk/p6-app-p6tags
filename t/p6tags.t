use Test;
use lib 'lib';

plan 1;

shell("./bin/p6tags Simple.pm");

my $got = slurp 'tags';
my $expected = slurp 't/tags.good';

ok $got eq $expected , "got expected result" and unlink 'tags';

