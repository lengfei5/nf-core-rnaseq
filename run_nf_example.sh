##############
# the test script for rnaseq nf 
# https://github.com/lengfei5/nf-core-rnaseq/blob/master/docs/configuration/adding_your_own.md
# 
##############
# bam to fastq
#~/scripts/ngs_tools/bam2fastq.sh

# run rnaseq-nf
ml load nextflow/19.01.0
ml load singularity/3.4.1

fqs="/groups/cochella/jiwang/Projects/Aleks/scRNAseq_published_dataSets/scRNAseq_Tintori/Raw/ngs_raw/FASTQs/*.gz"
output="$PWD/nf_out_scRNA"
workdir="$PWD/work"

star_index="/groups/cochella/jiwang/Genomes/C_elegans/WBcel235/index_4star"
GTF="/groups/cochella/jiwang/annotations/Caenorhabditis_elegans.WBcel235.88.gtf"

nextflow run /groups/cochella/jiwang/scripts/rnaseq_nf -profile slurm \
--reads "$fqs" \
--singleEnd \
--unstranded \
--star_index "$star_index" \
--gtf "$GTF" \
--max_IntronL 50000 \
--outdir "$output" \
-w "$workdir" \
--skip_preseq \
--saveAlignedIntermediates \
--skip_genebody_coverage \
--skip_dupradar \
--skip_edger \
--sampleLevel \
--skip_multiqc
