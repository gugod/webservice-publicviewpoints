use inc::Module::Install;
name 'WebService-PublicViewpoints';
all_from 'lib/WebService/PublicViewpoints.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';

auto_include;
WriteAll;
