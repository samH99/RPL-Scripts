#  -*- Mode: Perl; -*-                                                     
# 
#  dotTall.pl
# 

# print( "Hello World" =~ /World/ );
# print( "\n" );
    

print "Dot star tests\n";

print( "a\nb" =~ /(.*)/ );
print( "\n--with /s\n" );

print( "a\nb" =~ /(.*)/s );
print( "\n" );


# WHY does /s exist at all?  Interesting question, and if we find an
# answer, we will write it down because it will be an awesome footnote
# in a paper.

print "\nDot {3} tests\n";

print( "a\nb" =~ /(.{3})/ );# Expect no match
print( "\n--with /s\n" );

print( "a\nb" =~ /(.{3})/s );# Expect match due to /s
print( "\n" );

print "\nMulti capture tests\n";

print( "abcdef" =~ /(.{3})/ );	# Expect match, output is abc
print( "\n--\n" );
print( "abcdef" =~ /(...)/ );	# Expect match, output is abc
print( "\n--\n" );

print( "abcdef" =~ /((.){3})/ );	# Why 'abcc'?
print( "\n--\n" );

