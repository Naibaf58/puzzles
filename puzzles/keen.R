# -*- makefile -*-

KEEN_LATIN_EXTRA = tree234 maxflow dsf
KEEN_EXTRA = latin KEEN_LATIN_EXTRA

keen    : [X] GTK COMMON keen KEEN_EXTRA keen-icon|no-icon

keen    : [G] WINDOWS COMMON keen KEEN_EXTRA keen.res|noicon.res

keensolver : [U] keen[STANDALONE_SOLVER] latin[STANDALONE_SOLVER] KEEN_LATIN_EXTRA STANDALONE
keensolver : [C] keen[STANDALONE_SOLVER] latin[STANDALONE_SOLVER] KEEN_LATIN_EXTRA STANDALONE

ALL += keen[COMBINED] KEEN_EXTRA

!begin gtk
GAMES += keen
!end

!begin >list.c
    A(keen) \
!end

!begin >wingames.lst
keen.exe:Keen
!end
