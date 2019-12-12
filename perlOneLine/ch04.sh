### 
# @Description: 
 # @Author: you-know-who-2017
 # @Github: https://github.com/you-know-who-2017
 # @Date: 2019-12-12 19:58:24
 # @LastEditors: you-know-who-2017
 # @LastEditTime: 2019-12-12 20:10:47
 ###
perl -lne '(1x$_) !~ /^1?$|^(11+?)\1+$/ && print "$_ is prime"'

perl -MList::Util=sum -alne 'print sum @F'

perl -MList::Util=sum -alne 'push @S,@F; END { print sum @S }'

perl -MList::Util=sum -alne '$s += sum @F; END { print $s }'

perl -MList::Util=shuffle -alne 'print "@{[shuffle @F]}"'

echo a b c d | perl -MList::Util=shuffle -alne 'print "@{[shuffle @F]}"'
echo a b c d | perl -MList::Util=shuffle -alne 'print shuffle @F'

perl -MList::Util=min -alne 'print min @F'

perl -MList::Util=min -alne '@M = (@M, @F); END { print min @M }'

perl -MList::Util=min -alne '
$min = min @F;
$rmin = $min unless defined $rmin && $min > $rmin;
END { print $rmin }
'

perl -MList::Util=min -alne '$min = min($min // (), @F); END { print $min }'

perl -MList::Util=max -alne 'print max @F'

perl -MList::Util=max -alne '@M = (@M, @F); END { print max @M }'

perl -MList::Util=max -alne '
$max = max @F;
$rmax = $max unless defined $rmax && $max < $rmax;
END { print $rmax }
'

perl -MList::Util=max -alne '$max = max($max // (), @F); END { print $max }'

perl -alne 'print "@{[map { abs } @F]}"'

perl -alne 'print scalar @F'

perl -alne 'print scalar @F, " $_"'

perl -alne '$t += @F; END { print $t }'

perl -alne 'map { /regex/ && $t++ } @F; END { print $t || 0 }'

perl -alne '$t += /regex/ for @F; END { print $t }'

perl -alne '$t += grep /regex/, @F; END { print $t }'

perl -lne '/regex/ && $t++; END { print $t || 0 }'

perl -Mbignum=bpi -le 'print bpi(21)'

perl -Mbignum=PI -le 'print PI'

perl -Mbignum=bexp -le 'print bexp(1,21)'

perl -Mbignum=bexp -le 'print bexp(2,31)'

perl -Mbignum=e -le 'print e'

perl -le 'print time'

perl -le 'print scalar gmtime'

perl -le 'print scalar localtime'

perl -le 'print join ":", (localtime)[2,1,0]'

perl -le 'print join ":", (localtime)[2..6]'

perl -le 'print join ":", (localtime)[-2, -3]'

perl -MPOSIX -le '
@now = localtime;
$now[3] -= 1;
print scalar localtime mktime @now
'

perl -MPOSIX -le '
@now = localtime;
$now[0] -= 7;
$now[3] -= 9;
$now[4] -= 14;
print scalar localtime mktime @now
'

perl -MMath::BigInt -le 'print Math::BigInt->new(5)->bfac()'

perl -le '$f = 1; $f *= $_ for 1..5; print $f'

perl -MMath::BigInt=bgcd -le 'print bgcd(@list_of_numbers)'

perl -MMath::BigInt=bgcd -le 'print bgcd(20,60,30)'

perl -MMath::BigInt=bgcd -anle 'print bgcd(@F)'

perl -le '
$n = 20; $m = 35;
($m,$n) = ($n,$m%$n) while $n;
print $m
'

perl -MMath::BigInt=blcm -le 'print blcm(35,20,8)'

perl -MMath::BigInt=blcm -anle 'print blcm(@F)'

perl -le '
$a = $n = 20;
$b = $m = 35;
($m,$n) = ($n,$m%$n) while $n;
print $a*$b/$m
'

perl -le 'print join ",", map { int(rand(15-5))+5 } 1..10'

perl -le '
$n=10;
$min=5;
$max=15;
$, = " ";
print map { int(rand($max-$min))+$min } 1..$n;
'

perl -MAlgorithm::Permute -le '
$l = [1,2,3,4,5];
$p = Algorithm::Permute->new($l);
print "@r" while @r = $p->next
'

perl -MAlgorithm::Permute -le '
@l = (1,2,3,4,5);
Algorithm::Permute::permute { print "@l" } @l
'

perl -MList::PowerSet=powerset -le '
@l = (1,2,3,4,5);
print "@$_" for @{powerset(@l)}
'

perl -le '
$i=3;
$u += ($_<<8*$i--) for "127.0.0.1" =~ /(\d+)/g;
print $u
'

perl -le '
$ip="127.0.0.1";
$ip =~ s/(\d+)\.?/sprintf("%02x", $1)/ge;
print hex($ip)
'

perl -le 'print unpack("N", 127.0.0.1)'

perl -MSocket -le 'print unpack("N", inet_aton("127.0.0.1"))'

perl -MSocket -le 'print inet_ntoa(pack("N", 2130706433))'

perl -le '
$ip = 2130706433;
print join ".", map { (($ip>>8*($_))&0xFF) } reverse 0..3
'

perl -le '
$ip = 2130706433;
$, = ".";
print map { (($ip>>8*($_))&0xFF) } reverse 0..3
'

perl -le '
$ip = 2130706433;
$, = ".";
print map { (($ip>>8*($_))&0xFF) } 3,2,1,0
'