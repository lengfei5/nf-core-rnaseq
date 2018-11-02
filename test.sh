##############
# the test script for rnaseq nf 
# https://github.com/lengfei5/nf-core-rnaseq/blob/master/docs/configuration/adding_your_own.md
# 
##############
fqs='/scratch/jiwang/Ariane_R6875/ngs_raw/FASTQs/*.fastq'
output='/scratch/jiwang/Ariane_R6875/results'
workdir='/scratch/jiwang/Ariane_R6875/work'

star_index='/groups/cochella/jiwang/Genomes/C_elegans/WBcel235/index_4star'
GTF='/groups/cochella/jiwang/annotations/Caenorhabditis_elegans.WBcel235.88.gtf'

nextflow run /groups/cochella/jiwang/scripts/rnaseq_nf -profile slurm --reads '/scratch/jiwang/Ariane_R6875/ngs_raw/*.fastq' --singleEnd --unstranded --star_index $star_index --gtf $GTF --max_IntronL 50000  --outdir $output -w $workdir --skip_edger --skip_preseq --saveAlignedIntermediates --skip_genebody_coverage
