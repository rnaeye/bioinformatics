# Author: Erbay Yigit. 
# Date: March 19, 2017
# Count reads in fastq.gz file in a directory
# USAGE: <bash> <this_script.sh> <path_to_runFolder/AB9EG>
# Counts only R1. R2 will have the same number of reads

for i in $1/*.1.fastq.gz 
do
    file_name = $(basename -s 1.fastq.gz $i)
    echo "${file_name}" $(gunzip -c $i | echo $(wc -l)/4 | bc)
done

# If you are in the runFolder where fastq.gz, then doo not use command line argument $1
# Youor program becomes like this
for i in *.1.fastq.gz 
do
    file_name = $(basename -s 1.fastq.gz $i)
    echo "${file_name}" $(gunzip -c $i | echo $(wc -l)/4 | bc)
done
