Name:           lua-luarocks-source
Version:        1.0
Release:        1%{?autorelease}
Summary:        Dummy package

BuildRequires:  luarocks
BuildRequires:  perl
BuildRequires:  perl-RPM2

License:        LGPL
URL:            http://luarocks.org
Source0:        lua-luarocks.pl
BuildArch:      noarch

%description
%{summary}.

%(perl %{SOURCE0})


%description
Dummy package of luarocks

%changelog
* Fri Mar 07 2025 tyk <fijik19@gmail.com> - 1.0-1
- Initial release
