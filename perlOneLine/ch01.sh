### 
# @Description: 
 # @Author: you-know-who-2017
 # @Github: https://github.com/you-know-who-2017
 # @Date: 2019-12-12 19:09:42
 # @LastEditors: you-know-who-2017
 # @LastEditTime: 2019-12-12 19:36:00
 ###
perl -pi -e 's/you/me/g' file

perl -pi.bak -e 's/you/me/g' file
# .bak 创建了一个备份文件

perl -pi -e 's/you/me/g' file1 file2 file3

perl -pi -e 's/you/me/g if /we/' file

perl -pi -e 's/you/me/g if /\d/' file

perl -ne 'print if $a{$_}++' file

perl -ne 'print "$. $_"' file

perl -pe '$_ = "$. $_"' file

perl -ne 'print "$. $_" if $a{$_}++'

perl -MList::Util=sum -alne 'print sum @F'

perl -MPOSIX -le '@t = localtime; $t[3] -= 1299; print scalar localtime mktime @t'

perl -le 'print map { ("a".."z")[rand 26] } 1..8'

perl -le 'print unpack("N", 127.0.0.1)'

perl -lane '$sum += $F[0]; END { print $sum }'

iptables -L -nvx | perl -lane '$pkts += $F[0]; END { print $pkts }'

perl -a -F: -lne 'print $F[4]' /etc/passwd







