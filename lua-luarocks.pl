#!/bin/perl
use RPM2;
my $db = RPM2->open_rpm_db();
my $pkg = $db->find_by_name_iter('luarocks')->next;
if (defined($pkg)){
my $name = $pkg->name();
my $version = $pkg->version();
my $release = $pkg->release();
my $luaver = $ARGV[0];
print << "EOF"  ;
%package -n lua-$name
Version: $version
Release: $release
Requires: $name = $version-$release
Provides: lua${luaver}dist($name) = $version
Provides: luadist($name) = $version
BuildArch: noarch
Summary: @{[$pkg->summary()]}
URL: @{[$pkg->url()]}
License: @{[$pkg->license()]}
%description -n lua-$name
@{[$pkg->description()]}
%files -n lua-$name
EOF
}
