#Example 1: Balanced 
use Regexp::Common;
print( ("()()" =~ /(^($RE{balanced}{-parens=>'()'})+$)/)[0]);
print("\n");

#Example 2: Balanced with Characters in Between
use Regexp::Common;
print( ("(Hello( there(.)(general))kenobi)" =~ /(^($RE{balanced}{-parens=>'()'})+$)/)[0]); 
print("\n");

#If the starting opening parenthesis is removed…
use Regexp::Common;
print( ("Hello( there(.)(general))kenobi)" =~ /(^($RE{balanced}{-parens=>'()'})+$)/)[0]); 
print("\n");

#Example 3: Unbalanced 
use Regexp::Common;
print( (")))()()(()" =~ /(^($RE{balanced}{-parens=>'()'})+$)/)[0]); 
print("\n");

#Example 4: Two Types
use Regexp::Common;
print( ("({}}})()" =~ /(^($RE{balanced}{-parens=>'(){}'})+$)/)[0]); 
print("\n");

use Regexp::Common;
print( ("(){}}}" =~ /(^($RE{balanced}{-parens=>'(){}'})+$)/)[0]);
print("\n");

use Regexp::Common;
print( ("(){()(}" =~ /(^($RE{balanced}{-parens=>'(){}'})+$)/)[0]);
print("\n");