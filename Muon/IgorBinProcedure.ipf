#pragma rtGlobals=1		// Use modern global access method.


Macro TenMinuteBin()
	
	Variable i, npts
	
	npts=Floor(NumPnts(Rate)/600)
	
	Make/O/D/N=(npts) tenMinRate, tenMinTime, tenMinRateErr
	
	i=0 
	
	Do
		tenMinTime[i] = Mean(DateAndTime, 600*i, 600*(i+1))
		
		tenMinRate[i] = Sum(Rate, 600*i, 600*(i+1))
		
		Wavestats/R= (600*i, 600*(i+1)) Rate	
			
		tenMinRateErr[i] = V_sdev/sqrt(600)
		i+=1
	While(i<npts)
EndMacro

Macro ThirtyMinuteBin()
	
	Variable i, npts
	
	npts=Floor(NumPnts(Rate)/(3*600))
	
	Make/O/D/N=(npts) thirtyMinRate, thirtyMinTime, thirtyMinRateErr
	
	i=0 
	
	Do
		thirtyMinTime[i] = Mean(DateAndTime, (3*600)*i, (3*600)*(i+1))
		
		thirtyMinRate[i] = Sum(Rate, (3*600)*i, (3*600)*(i+1))
		
		Wavestats/R= ((3*600)*i, (3*600)*(i+1)) Rate	
			
		thirtyMinRateErr[i] = 3*600* V_sdev/sqrt((3*600))
		i+=1
	While(i<npts)
EndMacro