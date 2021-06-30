# USAGE EXAMPLES ARE SHOWNj below

# bedtools sort -i rand_all_reads_GRCh38_spikeins_STAR_end2end_R1_5end_all_bases_coverage.bedGraph>sorted_rand_all_reads_GRCh38_spikeins_STAR_end2end_R1_5end_all_bases_coverage.bedGraph
# bedtools sort -i rand_all_reads_GRCh38_spikeins_STAR_end2end_R2_3end_all_bases_coverage.bedGraph>sorted_rand_all_reads_GRCh38_spikeins_STAR_end2end_R2_3end_all_bases_coverage.bedGraph
# bedtools sort -i std_all_reads_GRCh38_spikeins_STAR_end2end_R1_5end_all_bases_coverage.bedGraph>sorted_std_all_reads_GRCh38_spikeins_STAR_end2end_R1_5end_all_bases_coverage.bedGraph
# bedtools sort -i std_all_reads_GRCh38_spikeins_STAR_end2end_R2_3end_all_bases_coverage.bedGraph>sorted_std_all_reads_GRCh38_spikeins_STAR_end2end_R2_3end_all_bases_coverage.bedGraph
# bedextract "chr11" sorted_rand_all_reads_GRCh38_spikeins_STAR_end2end_R1_5end_all_bases_coverage.bedGraph > rand_all_R1_5end_seb_chr11.bedGraph
# bedextract "chr11" sorted_rand_all_reads_GRCh38_spikeins_STAR_end2end_R2_3end_all_bases_coverage.bedGraph > rand_all_R2_3end_seb_chr11.bedGraph
# bedextract "chr11" sorted_std_all_reads_GRCh38_spikeins_STAR_end2end_R1_5end_all_bases_coverage.bedGraph > std_all_R1_5end_seb_chr11.bedGraph
# bedextract "chr11" sorted_std_all_reads_GRCh38_spikeins_STAR_end2end_R2_3end_all_bases_coverage.bedGraph > std_all_R2_3end_seb_chr11.bedGraph

# echo -e "chr11\t65497271\t65507836" | bedextract std_all_R2_3end_seb_chr11.bedGraph - > std_all_R2_3end_sebastians_MALAT1.bedGraph 
# echo -e "chr11\t65497271\t65507836" | bedextract std_all_R1_5end_seb_chr11.bedGraph - > std_all_R1_5end_sebastians_MALAT1.bedGraph
# echo -e "chr11\t65497271\t65507836" | bedextract rand_all_R2_3end_seb_chr11.bedGraph - > rand_all_R2_3end_sebastians_MALAT1.bedGraph
# echo -e "chr11\t65497271\t65507836" | bedextract rand_all_R1_5end_seb_chr11.bedGraph - > rand_all_R1_5end_sebastians_MALAT1.bedGraph

echo -e "chr11\t65497271\t65507836" | bedextract chr11.R1_5end.bedGraph - > splint_erbay_R1_5end_MALAT1.bedGraph
echo -e "chr11\t65497271\t65507836" | bedextract chr11.R2_3end.bedGraph - > splint_erbay.R2_3endMALAT1.bedGraph

# IT'S ALSO POSSIBLE TO RUN IT FROM A TARGET FILE CONTAINING CHR COORDINATES
bedextract query.bed target.starch

#CONTENT OF TARGET.STARCH (may contain multiple entries
chr11 65497271  65507836
chr1 65497271  65507836
