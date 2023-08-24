define(`level', `0'patsubst(patsubst(esyscmd(`head -n 1'), `[^0-9]', `'), `^0*', `'))dnl
define(`space', `ifelse($1, `0', `', `     space(decr(`$1'))')')dnl
define(`body', `ifelse($1, `0', `|       #', `body(decr(`$1'))____
space(decr(`$1'))! !  |       #')')dnl
 o
/|\_____
body(level)
space(level)! !  ! !
