# -*- coding: utf-8 -*-
"""
Created on Thu Nov  5 14:44:59 2015

@author: ian
"""



import numpy as np
from matplotlib import pyplot as pp


time,data=np.loadtxt('/home/ian/Documents/Classes/Phys314/Muon/Corina_Ian_Thres208mV.txt',unpack=True)

counts,bin_edges = np.histogram(data,200)
bin_centres = (bin_edges[:-1] + bin_edges[1:])/2.

err = map(np.sqrt,counts)
pp.errorbar(bin_centres, counts, yerr=err, fmt='o')
pp.savefig('asdf')
pp.show()
pp.close()