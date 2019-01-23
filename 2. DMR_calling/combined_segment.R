setwd("/data2/Epi/likai/brest_cancer_project/all_sample_bam/SMART/run/NMvsEarly/")

###extract the segments
chrom = paste0("chr",c(1:22,"X","Y","MT"))
all.bed = c()
for(i in 1:length(chrom))
{
    bed = read.table(paste0(chrom[i],"/DeNovoDMR/2_MergedSegment.bed"),skip = 2,stringsAsFactors = F)
    all.bed = rbind(all.bed,bed)
}
write.table(all.bed,"../NMvsEarly_train_test/segment.bed",col.names = F,row.names = F,quote = F,sep="\t")

