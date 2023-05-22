#!/bin/bash

#fourth step is to sam to bam conversion and them sort the bam
#conda activate samtoolsicin ile calisir
SRR=$1

#sam to bam conversion
samtools view -S -b results/sam/$SRR'_aligned.sam' > results/bam/$SRR'_aligned.bam'

#now sorting part
samtools sort -o results/bam/$SRR'_aligned_sorted.bam' results/bam/$SRR'_aligned.bam'

