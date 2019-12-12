### 
# @Description: 
 # @Author: you-know-who-2017
 # @Github: https://github.com/you-know-who-2017
 # @Date: 2019-12-12 19:43:20
 # @LastEditors: you-know-who-2017
 # @LastEditTime: 2019-12-12 19:49:13
 ###
perl -pe '$\ = "\n"' file

while (<>) { $\ = "\n"; } continue { print or die "-p failed: $!\n"; }

##
perl -pe 'BEGIN { $\ = "\n" }' file
    
BEGIN { $\ = "\n" }
while (<>) {
} continue {
print or die "-p failed: $!\n";
}

##
perl -pe '$_ .= "\n"' file

while (<>) {
$_ = $_ . "\n"
} continue {
print or die "-p failed: $!\n";
}

perl -pe 's/$/\n/' file

##
perl -nE 'say' file


perl -pe '$_ .= "\n" unless /^$/'

while (<>) {
unless (/^$/) {
$_ .= "\n"
}
} continue {
print or die "-p failed: $!\n";
}


perl -pe '$_ .= "\n" if /\S/'

perl -pe '$\ = "\n\n"'

perl -pe '$_ .= "\n\n"'

perl -pe 's/$/\n\n/'

perl -pe '$_ .= "\n"x7'

perl -e 'print "foo"x5'

perl -e 'print "a"x1024'

perl -pe 's/^/\n/'

perl -ne 'print unless /^$/'

while (<>) {
print unless /^$/
}

while (<>) {
print $_ unless $_ =~ /^$/
}

perl -lne 'print if length'

perl -ne 'print if /\S/'

perl -00 -pe ''
perl -00pe0

perl -00 -pe '$_ .= "\n"x2'

perl -pe 's/ /  /g'

perl -pe 's/ +//g'

perl -pe 's/\s+//g'

perl -pe 's/ +/ /g'

perl -lpe 's// /g'





