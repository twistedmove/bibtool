#!/bin/perl -W
# =============================================================================
#  
#  This file is part of BibTool.
#  It is distributed under the GNU General Public License.
#  See the file COPYING for details.
#  
#  (c) 2011-2014 Gerd Neugebauer
#  
#  Net: gene@gerd-neugebauer.de
#  
#*=============================================================================

=head1 NAME

print_newline.t - Test suite for BibTool print.newline.

=head1 SYNOPSIS

print_newline.t 

=head1 DESCRIPTION

This module contains some test cases. Running this module as program
will run all test cases and print a summary for each. Optionally files
*.out and *.err are left if the expected result does not match the
actual result.

=head1 OPTIONS

none

=head1 AUTHOR

Gerd Neugebauer

=cut

use strict;
use BUnit;


#------------------------------------------------------------------------------
BUnit::run(name         => 'print_newline_1',
	   args         => '-- print.newline=0 bib/x1.bib bib/x1.bib',
	   expected_out => "\n".
	   "\@Manual{	  bibtool,\n".
	   "  title		= {BibTool},\n".
	   "  author	= {Gerd Neugebauer},\n".
	   "  year		= 2011\n".
	   "}\n".
	   "\@Manual{	  bibtool,\n".
	   "  title		= {BibTool},\n".
	   "  author	= {Gerd Neugebauer},\n".
	   "  year		= 2011\n".
	   "}",
    expected_err => ''
    );

#------------------------------------------------------------------------------
BUnit::run(name         => 'print_newline_2',
	   args         => '-- print.newline=1 bib/x1.bib bib/x1.bib',
	   expected_out => <<__EOF__,

\@Manual{	  bibtool,
  title		= {BibTool},
  author	= {Gerd Neugebauer},
  year		= 2011
}

\@Manual{	  bibtool,
  title		= {BibTool},
  author	= {Gerd Neugebauer},
  year		= 2011
}
__EOF__
    expected_err => ''
    );

#------------------------------------------------------------------------------
BUnit::run(name         => 'print_newline_3',
	   args         => '-- print.newline=2 bib/x1.bib bib/x1.bib',
	   expected_out => <<__EOF__,

\@Manual{	  bibtool,
  title		= {BibTool},
  author	= {Gerd Neugebauer},
  year		= 2011
}


\@Manual{	  bibtool,
  title		= {BibTool},
  author	= {Gerd Neugebauer},
  year		= 2011
}

__EOF__
    expected_err => ''
    );

#------------------------------------------------------------------------------
# Local Variables: 
# mode: perl
# End: 
