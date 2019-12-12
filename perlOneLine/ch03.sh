### 
# @Description: 
 # @Author: you-know-who-2017
 # @Github: https://github.com/you-know-who-2017
 # @Date: 2019-12-12 19:49:42
 # @LastEditors: you-know-who-2017
 # @LastEditTime: 2019-12-12 19:55:06
 ###
perl -pe '$_ = "$. $_"'

perl -ne 'print "$. $_"'

perl -pe '$_ = ++$x." $_" if /./'

perl -pe '$_ = ++$x." $_" if /\S/'

perl -ne 'print ++$x." $_" if /./'

perl -pe '$_ = "$. $_" if /./'

perl -pe '$_ = "$. $_" if /./'

perl -pe '$_ = ++$x." $_" if /regex/'
perl -pe '$_ = ++$x." $_" if /record/'

perl -ne 'print ++$x." $_" if /regex/'

perl -pe '$_ = "$. $_" if /regex/'

perl -ne 'printf "%-5d %s", $., $_'

perl -lne 'END { print $. }'

perl -le 'print $n = () = <>'

perl -le 'print $n = (() = <>)'

perl -le 'print scalar(() = <>)'

perl -le 'print scalar(@foo = <>)'

perl -ne '}{print $.'

perl -le 'print scalar(grep { /./ } <>)'

perl -le 'print ~~grep{/./}<>'

perl -le 'print~~grep/./,<>'

perl -lE 'say~~grep/./,<>'

perl -lne '$x++ if /^$/; END { print $x+0 }'

perl -lne '$x++ if /^$/; END { print int $x }'

perl -le 'print scalar(grep { /^$/ } <>)'

perl -le 'print ~~grep{ /^$/ } <>'

perl -lne '$x++ if /regex/; END { print $x+0 }'

perl -pe 's/(\w+)/++$i.".$1"/ge'

perl -pe '$i=0; s/(\w+)/++$i.".$1"/ge'

perl -pe 's/(\w+)/++$i/ge'

