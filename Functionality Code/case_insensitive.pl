#  -*- Mode: Perl; -*-                                                     
# 
#  case_insensitive.pl
# 

# print( "Hello World" =~ /World/ );
# print( "\n" );
    

print "'a' star tests\n";

print( "aAa" =~ /(a*)/ );

print( "\n--with /i\n" );
print( "aAa" =~ /(a*)/i );

print "\n\n'qwerty' tests\n";
print( "qwErTy" =~ /(qwerty)/ );   #should output nothing
print( "\n--with /i\n" );
print( "qwErTy" =~ /(qwerty)/i );
print( "\n" );


print( "aAbBC" =~ /([abc]*)/i );
print( "\n" );

print( "ajhgHJHGJHGHJ" =~ /([[:lower:]]*)/ ); # Matches ajhg
print( "\n" );

print( "ajhgHJHGJHGHJ" =~ /([[:lower:]]*)/i ); # Matches ajhgHJHGJHGHJ
print( "\n" );

