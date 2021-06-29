# USAGE: $ script.sh /runFolder/AB9EG
for i in $1/*.1.fastq.gz
do
   echo "$i" $(gunzip -c $i | echo `wc -l`/4 | bc -l)
done
