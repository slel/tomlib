#############################################################################
##
#W  tomlib.tst              GAP 4 package `tomlib'              Thomas Breuer
##
#Y  Copyright (C)  2003,  Lehrstuhl D fuer Mathematik,  RWTH Aachen,  Germany
##

gap> START_TEST("tomlib.tst");
gap> LoadPackage( "tomlib" );
true

# Check that all tables of marks can be loaded without problems
# (The test whether they are internally consistent takes too long.)
gap> for name in AllLibTomNames() do
>      tom:= TableOfMarks( name );
>      if not IsTableOfMarks( tom ) then
>        Print( "#E  problem loading t.o.m. of `", name, "'\n" );
>      fi;
> od;
gap> STOP_TEST( "tomlib.tst", 200000000000 );


#############################################################################
##
#E
