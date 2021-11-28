#  -*- Mode: Perl; -*-                                                     
# 
#  comments.pl
# 

# print( "Hello World" =~ /World/ );
# print( "\n" );
    

print "space tests\n";

print( "aaaa" =~ /(a a a a)/ ); #outputs nothing
print( "\n--with /x\n" );
print( "aaaa" =~ /(a a a a)/x );

print "\n\n# tests\n";

print( "aaaa" =~ /(aaaa#fire trucks are actually jsut water trucks
)/ );  #Outputs nothing

print( "aaaa" =~ /(aaaa#fire trucks are actually jsut water trucks
)/x );


print("\n");
print( "aaaa" =~ /(a
a
a
a)/x );
print("\n");
