#Perl solution
cat oligos.csv | perl -na -F, -e 'print "$F[5] $F[4]\n" if $F[5]=~/^C/i'| grep -i "^C"

grep -i "pseudou\|RNA" roligos.csv #or
grep -E -i "fluro.*pseudo" #order is important
