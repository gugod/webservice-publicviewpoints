#!/usr/bin/env perl -w
use strict;
use Test::More;

BEGIN {
    unless (exists $ENV{TEST_PUBLIC_VIEWPOINTS}) {
        plan skip_all => "Will hit the app server, define TEST_PUBLIC_VIEWPOINTS env var needs to really run this test";
    }
}

use WebService::PublicViewpoints;

my $points = WebService::PublicViewpoints->find(num => 3, country_code => "US");

is(@$points, 3, "retrieved 3 points");

my $p = $points->[0];

foreach my $field (qw(url country_code country state city lat lng)) {
    ok defined $p->$field, "should define $field";
}

done_testing;
