# rnaseq_nf 

This is a rnaseq data processing pipeline based on the one in  
https://github.com/ewels/nf-core-rnaseq  
which is really nice nf pipeline.

Some customized modification has been done to adapt the IMP/IMBA slurm HPC  

### Some important modification 
    - add the intron length parameter for star aligner and test it 
    - add the single-end reads for feature counts
    - add the index .bai.bai files for the aligned bams from star
    - change the base.config to adapt ii2 

