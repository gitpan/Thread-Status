BEGIN {				# Magic Perl CORE pragma
    if ($ENV{PERL_CORE}) {
        chdir 't' if -d 't';
        @INC = '../lib';
    }
}

use Test::More tests => 2;
use strict;

use Thread::Status ();
ok( defined( $Thread::Status::VERSION ),	'check whether loaded' );
can_ok( 'Thread::Status',qw(
 each
 format
 output
 signal
) );
