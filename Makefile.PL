use PDL::Core::Dev;
use ExtUtils::MakeMaker;

$package = ["X.pd", X, PDL::Graphics::X];

# the hash helps dh-make-perl to find needed name and version strings

%hash=(                                                                                                        
	pdlpp_stdargs($package),
	
	'NAME'			=> 'PDL::Graphics::X',                                                                       
	'VERSION_FROM'	=> 'X.pd',
	'LIBS'			=> '-L/usr/X11R6/lib -lX11',
#	'TYPEMAPS'		=> [&PDL_TYPEMAP(), typemap],
);

WriteMakefile( %hash );

sub MY::postamble {pdlpp_postamble($package)};
