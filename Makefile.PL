require 5.008;
use threads (); # just to force breakage if threads are not available
use ExtUtils::MakeMaker;

WriteMakefile (
 NAME		=> "Thread::Status",
 ($[ >= 5.005) ?
 (AUTHOR	=> 'Elizabeth Mattijsen (liz@dijkmat.nl)',
  ABSTRACT	=> 'report stack status of all running threads') : (),
 VERSION_FROM	=> 'lib/Thread/Status.pm',
 PREREQ_PM	=> {
		    Thread::Signal => '1.06',
                   },
);
