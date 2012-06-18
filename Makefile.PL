use strict;
use warnings;
use ExtUtils::MakeMaker;

my %params = (
    NAME          => 'Archive::Any::Lite',
    AUTHOR        => 'Kenichi Ishigaki <ishigaki@cpan.org>',
    VERSION_FROM  => 'lib/Archive/Any/Lite.pm',
    ABSTRACT_FROM => 'lib/Archive/Any/Lite.pm',
    LICENSE       => 'perl',
    PREREQ_PM     => {
        'Archive::Tar'            => 0,
        'Archive::Zip'            => 0,
        'File::Spec'              => 0,
        'IO::Uncompress::Bunzip2' => 0,
        'IO::Zlib'                => 0,
        'Test::More'              => '0.47',
        'Test::UseAllModules'     => '0.10',
    },
);

my $eumm = $ExtUtils::MakeMaker::VERSION;
delete $params{LICENSE} if $eumm < 6.31;

WriteMakefile(%params);
