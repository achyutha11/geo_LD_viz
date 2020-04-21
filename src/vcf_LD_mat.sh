#!/bin/bash


# Setting the arguments
VCF_FILE=$1
RANGE_FILE=$2
CHROM=$3

# range for chrom 22: 16050075 - 51244237
while read p;
do 
    range=$(echo $CHROM:$(echo $p | awk '{print $1}')-$(echo $p | awk '{print
    $2}'))
    time bcftools view -r $range $VCF_FILE | plink --vcf - --r2 --stdout > /dev/null
done
