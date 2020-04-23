# geo_LD_viz
# to generate ld matrix:
plink2 --bfile yri_filt --r2 triangle gz --out yri_ld
# + filtering
plink2 --bfile yri_filt --maf 0.05 --r2 triangle gz --out yri_ld
# to filter individuals by popn
plink2 --bfile ../test --keep yri.txt --make-bed --out yri_filt
awk '$3 =="YRI"{print $1,$2}' pops.txt > popfiles/yri.txt
