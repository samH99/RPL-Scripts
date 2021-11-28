#  -*- Mode: Perl; -*-                                                     
# 
#  balancedPren.pl
# 

# print( "Hello World" =~ /World/ );
# print( "\n" );

$first = qr/(^((\")|\()$)/;
#print("\"" =~ $first);
#print("\n");

#$bp = qr/^(\"|\'|\()(.*)(?(?=['"])(\1)|(\)))$/;

#print("Should work:\n");
$string = "\"\'";
#$string2 = "(hello)";
#$string3 = "\"hello\"";
#$string4 ="(hello (world))";
#print( $string =~ $bp );
#print( $string2 =~ $bp );
#print( $string3 =~ $bp );
#print( $string4 =~ $bp );
#print("\n");

#print("Should'nt work:\n");
#$badString = "))";
#$badString2 = "(()";
#$badString3 = "(hello(";
#$badString4 = "\"hello\'";
#print( $badString =~ $bp );
#print( $badString2 =~ $bp );
#print( $badString3 =~ $bp );
#print( $badString4 =~ $bp );
#print("\n");


#print("Just prenthesis:\n");
#print( $string, $string2, $badString, $badString2, $badString3 =~ /^(\()  (.*)  (?(?=\2)(\2)|(\)))$/ );
#print("\n");
# why does it fail?
# (\() matches a starting '('
# (.*) matches any characters in between (possibly including prenthesis?)
# (?(?=\2)(\2)|(\))) lookahed is bad? recursively matches '.*' and ')'?

#print("Just prenthesis(works):\n");
use Regexp::Common;
#print( "([]]])[[][()))]" =~ /$RE{balanced}{-parens=>'()[]'}/g); 
#With the g modifier, the string remembers the place of its last match,
#so you can request a match with a g in a while loop and find all the matches.
print("\n");

#try to get the indexes of the matches

#what other functions does the common package provide-- what is "balanced" key word
#investigate if we can balance more than one thing at a time
#what are the rules for this balanced "function" -- look for documentation


#print( "\'\'" =~ /$RE{quoted}/); 
#print( "kjhdk 90 jkdshkfk 8 sdjki88d" =~ /^(\d+)$/g ); #/g flag just means it allows multiple matches
#print("\n");

#print( "aa(j)33()(ui)(k0)ff(fh)(u)" =~ /([^()]*\((?>[^()]|(?R))*\)[^()]*)/g);
#print("\n"); 

#@cap = ("()(())" =~ /(^(\((?-1)?\))+$)/);
#print( ("()(())" =~ /(^(\((?-1)?\))+$)/)[0]);
#print("\n");

print( ("{(Hello( there.(){{}}(ge{n{e}ra}l{}))kenob)}" =~ /(^((\((?>[^(){}]|(?2))*\))*(\{(?>[^(){}]|(?2))*\})*)$)/)[0]);
print("\n");
#put the new code in the file.
#figure out the other with version with 0 insted of R of the recursive code. 
#figure out the difference between ?1, ?-1, ?2