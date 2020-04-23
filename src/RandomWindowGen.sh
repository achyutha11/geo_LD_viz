# Script to choose 10-100 random windows of length L
# Arguments for this function: Number of windows, length L, minimum position, maximum position

import numpy as np

def rwg(N,l,a,b):
    for i in range(N):
        start = np.random.randint(a,b-l+2)
        window = list(range(start,start+l))
        print(window)
    
	