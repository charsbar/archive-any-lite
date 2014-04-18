requires 'Archive::Tar'            => '1.76'; # for filter_cb
requires 'Archive::Zip'            => 0;
requires 'File::Spec'              => 0;
requires 'IO::Uncompress::Bunzip2' => 0;
requires 'IO::Zlib'                => 0;

on test => sub {
  requires 'Test::More'              => '0.47';
  requires 'Test::UseAllModules'     => '0.10';
};
