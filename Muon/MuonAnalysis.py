# -*- coding: utf-8 -*-
"""
Created on Thu Nov  5 14:44:59 2015

@author: ian
"""


import numpy as np
time_400,rate_400=np.loadtxt('/home/ian/Documents/Classes/Phys314/Muon/Ian_Corina/Corina_Ian_Thres400mVRate2015_11_10-13-24.txt',unpack=True)
new_time_400=[]
new_rates_400=[]
count=0
for i in range(0,len(time_400)-1):
    if time_400[i]==0:
        continue
    new_time_400.append(time_400[i])
    new_rates_400.append(rate_400[i])
print(len(new_time_400))
print(len(new_rates_400))

new_time_400_red = (np.asarray(new_time_400)-[new_time_400[0]]*len(new_time_400))
print(new_time_400[len(new_time_400_red)-1])
print(new_time_400_red[len(new_time_400_red)-1])
#hour_time_400=np.arange(0,46)
#hour_counts_400 = [0]*46
#print time_400[len(time_400)]
prev_index=-1
hour_time_400=np.arange(0,120)
hour_counts_400=[0]*120
for i in range(0,len(rate_400)):
    if(new_time_400_red[i]<0):
        break
    index=i//3600
    hour_counts_400[index]+=rate_400[i]
err_400=list(map(np.sqrt,hour_counts_400))
print(type(err_400))
import matplotlib.pyplot as plt
import seaborn as sns
hour_time_400=np.arange(0,len(hour_counts_400))
plt.figure(1)
plt.errorbar(hour_time_400[:-2],hour_counts_400[:-2],yerr=err_400[:-2],fmt='.')
plt.ylabel('Counts')
plt.xlabel('Hour')
plt.show()
