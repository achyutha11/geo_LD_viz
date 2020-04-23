# geo_LD_viz
# to generate ld matrix:
plink2 --bfile yri_filt --r2 triangle gz --out yri_ld
# + filtering
plink2 --bfile yri_filt --maf 0.05 --r2 triangle gz --out yri_ld
# to filter individuals by popn
plink2 --bfile ../test --keep yri.txt --make-bed --out yri_filt
awk '$3 =="YRI"{print $1,$2}' pops.txt > popfiles/yri.txt

#to generate random windows (for performance test)
import numpy as np

def rwg(N,l,a,b):
    for i in range(N):
        start = np.random.randint(a,b-l+2)
        window = list(range(start,start+l))
        print(window)
    
