# -*- makefile -*-

undead : [X] GTK COMMON undead undead-icon|no-icon
undead : [G] WINDOWS COMMON undead undead.res|noicon.res

ALL += undead[COMBINED]

!begin gtk
GAMES += undead
!end

!begin >list.c
    A(undead) \
!end

!begin >wingames.lst
undead.exe:Undead
!end
