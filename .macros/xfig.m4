divert(-1)
   xfig.m4                      Initialization for xfig.

* Circuit_macros Version 9.3.4, copyright (c) 2020 J. D. Aplevich under      *
* the LaTeX Project Public Licence in file Licence.txt. The files of       *
* this distribution may be redistributed or modified provided that this    *
* copyright notice is included and provided that modifications are clearly *
* marked to distinguish them from this distribution.  There is no warranty *
* whatsoever for these files.                                              *

define(`m4picprocessor',dpic)
define(`m4postprocessor',xfig)

ifdef(`libgen_',,`include(libgen.m4)divert(-1)')dnl

define(`thinlines_',`linethick = 0.4
  arrowwid = 0.05*2/3*scale; arrowht = 0.1*2/3*scale; ')
define(`thicklines_',`linethick = 0.8
  arrowwid = 0.05*scale; arrowht = 0.1*scale; ')
define(`linethick_',`linethick = ifelse(`$1',,`0.8',`$1'); dnl
  arrowwid = ifelse(`$1',,`0.05',linethick/0.8*0.05)*scale; dnl
  arrowht = ifelse(`$1',,`0.1',linethick/0.8*0.1)*scale; ')

divert(0)dnl
