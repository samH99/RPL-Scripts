#  -*- Mode: Perl; -*-

$str = "HelloHello";

if($str =~ /(Hello)\1/){
    print($0);
    print("\n");
}
