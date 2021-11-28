#  -*- Mode: Perl; -*-                                                     
# 
#  dotTall.pl
# 

# print( "Hello World" =~ /World/ );
# print( "\n" );
    
use strict;
use utf8;

print( "According to Google Translate, \"Hello, world!\" in Greek is \"Γειά σου Κόσμε!\"" =~ /\p{Greek}/ ); #Matches
print("\n");

