/*** init.h *******************************************************************
** 
** This file is part of BibTool.
** It is distributed under the GNU General Public License.
** See the file COPYING for details.
** 
** (c) 1996-2014 Gerd Neugebauer
** 
** Net: gene@gerd-neugebauer.de
** 
**-----------------------------------------------------------------------------
** Description:
**	This header file provides the prototype for the global initialization
**	function which is required to be called before any action can be 
**	performed.
**
******************************************************************************/


/*---------------------------------------------------------------------------*/

#ifdef __STDC__
#define _ARG(A) A
#else
#define _ARG(A) ()
#endif
 void init_bibtool _ARG((char * progname));	   /* init.c                 */

