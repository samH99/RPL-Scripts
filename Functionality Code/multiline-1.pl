#  -*- Mode: Perl; -*-                                                     
# 
#  comments.pl
# 

# print( "Hello World" =~ /World/ );
# print( "\n" );
    

print "multiline \^ tests\n";                    # ^ matches the beginning

$string = "hello\ngoodbye";
print( $string =~ /(^goodbye)/ ); #Outputs nothing
print( $string =~ /(^goodbye)/m );

print( "\n");
print( $string =~ /(^good)/m );

print "\nmultiline \$ tests\n";                   # $ matches the end

print( $string =~ /(hello)/ );

print( $string =~ /(hello$)/ ); #Outputs nothing
print( $string =~ /(hello$)/m );


print( "\n");
print( $string =~ /(lo$)/m );

print "\ncombined with \s\n";

print( "1\n2\n3\n4\n5\n6\n7\n" =~ /(2.*5)/ );       #Outputs nothing
print( "1\n2\n3\n4\n5\n6\n7\n" =~ /(^2.*5$)/ );     #Outputs nothing
print( "1\n2\n3\n4\n5\n6\n7\n" =~ /(^2.*5$)/m );    #Outputs nothing
print( "1\n2\n3\n4\n5\n6\n7\n" =~ /(^2.*5$)/s );    #Outputs nothing
print( "1\n2\n3\n4\n5\n6\n7\n" =~ /(^2.*5$)/sm );

print( "\n");

print "\npractical example \n";
print( "kjhdk 90 jkdshkfk 8 sdjki88d" =~ /(\d+)/g ); #/g flag just means it allows multiple matches
print( "\n");
print( "1\n2\n3\n4\n5" =~ /(^\d+)/g );
print( "\n");
#matches any integers if its in the beginning of the line
print( "1a\n2a\n3a\n4a\n5a" =~ /(^\d+)/mg );
print( "\n");
#matches any integers if its in the end of the line
print( "a1\na1\na1\na1\na1" =~ /(\d+$)/mg );
print( "\n");
#matches any integers if its in the beginning and end of the line
print( "1a1\n2a1\n3a1\n4a1\n5a1" =~ /(^\d+\w\d+$)/mg );
print( "\n");
print( "1\n2\n3\n4\n5" =~ /(^\d+$)/mg );
print( "\n");
