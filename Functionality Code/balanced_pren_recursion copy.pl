#Example 1: Balanced 
print( "()()" =~ /([^()]*\((?>[^()]|(?R))*\)[^()]*)/g);
print("\n");

#Example 2: Balanced with Characters in Between
print( "(Hello( there(.)(general))kenobi)" =~ /([^()]*\((?>[^()]|(?R))*\)[^()]*)/g); 
print("\n");

#Example 3: Unbalanced
print( ")))()()(()" =~ /([^()]*\((?>[^()]|(?R))*\)[^()]*)/g); 
print("\n");