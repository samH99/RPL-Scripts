#  -*- Mode: Perl; -*-                                                     
# 
#  primes.pl
# 

$prime = /^.?$|^(..+?)\1+$/;
#impossible to print out prime unless there is a way to tell how many times a back ref is called

#(..+?) matches ".." first and the \1+ makes it match as many times as possible-- the paper says it trys 1 less each time
#but im not so sure because \1+ doesnt have a question mark (only question marks make it the program consider non greedy??)

#^.?$ matches "" and "."


#print(!(".." =~ /^.?$|^(..+?)\1+$/)); 
#print("\n");

print("Is 4 Prime\n ");
if (!((1x4) =~ /^.?$|^(..++)\1++$/)) {
    print("Yes\n")
} else {
    print("No\n")
}
