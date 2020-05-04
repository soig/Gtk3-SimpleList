use strict;
use warnings;

use ExtUtils::MakeMaker;

use File::Spec;
use Data::Dumper;


sub main {
	# Create the Makefile
	my @args = (
		AUTHOR        => 'Thierry Vignaud <tvignaud@cpan.org>',
		NAME          => 'Gtk3::SimpleList',
		VERSION_FROM  => File::Spec->catfile('lib', 'Gtk3', 'SimpleList.pm'),
		ABSTRACT_FROM => File::Spec->catfile('lib', 'Gtk3', 'SimpleList.pm'),
		LICENSE       => 'perl, lgpl',

		PREREQ_PM     => {
			'Gtk3'                        => 0,
		},

		META_MERGE => {
			'meta-spec' => { version => 2 },
			resources => {
				homepage    => 'https://github.com/soig/Gtk3-SimpleList',
				bucktracker => 'https://github.com/soig/Gtk3-SimpleList/issues',
				repository  => 'https://github.com/soig/Gtk3-SimpleList',
			},
			repository  => {
				type => 'git',
				url => 'https://github.com/soig/Gtk3-SimpleList.git',
				web =>  'https://github.com/soig/Gtk3-SimpleList',
			},
		},
	);
	WriteMakefile(@args);


	return 0;
}


exit main() unless caller;

