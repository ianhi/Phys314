# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import matplotlib.pyplot as plt
import seaborn as sns
import csv
import numpy as np
from scipy.optimize import curve_fit

def func(x, a, b, c):
    return a * np.exp(-b * x) + c
def getColumn(filename, column):
    results = csv.reader(open(filename), delimiter=",")
    return [result[column] for result in results]

#plt.style.use('fivethirtyeight')

filename="data.csv"
time = getColumn(filename,0)

volt = getColumn(filename,2)
volt_mod = getColumn(filename,2)
type(volt)
for n,i in enumerate(volt):
    if float(i)<0:
        volt[n]=str(-float(i))
        volt_mod[n]=str(-float(i))
        
    if float(i)>0:
        volt_mod[n]=str(-float(i))

fig = plt.figure()
ax1 = fig.add_subplot(111)

ax1.scatter(time,volt,s=40,marker='s')
ax1.scatter(time,volt_mod, c='r',label="volt_mod")

#plt.scatter(time,volt)
plt.xlabel("time (ms)")
plt.ylabel("voltage (V)")
plt.xlim([0,60])
plt.legend(loc='upper left');
plt.show()




'''
plt.figure(1)
filename="T2_Data.csv"
time = np.arange(1,8.5,.5)# np.flipud(np.arange(1,8.5,.5))

volt = getColumn(filename,0)

plt.scatter(time,volt)
plt.title("$T_2$")
plt.xlabel("time (ms)")
plt.ylabel("voltage (V)")
plt.show()

'''