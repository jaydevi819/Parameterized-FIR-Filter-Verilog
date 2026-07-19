import numpy as np
from scipy.signal import firwin
N = 10 ;
cutoff = 0.2 ;
h = firwin(N,cutoff)
print(h)
Q = 15
h_q15 = np.round(h * (2**Q)).astype(int)
print("Coefficients:",h_q15)

print(sum(h))
print(sum(h_q15))
coeff = h_q15

