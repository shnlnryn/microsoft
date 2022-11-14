DeviceInfo
|where OSDistribution contains "Windows" and OnboardingStatus ==  "Onboarded"
| join (DeviceTvmSecureConfigurationAssessment)
on DeviceId
| join (DeviceTvmInfoGathering)
on DeviceId
| where ConfigurationId == "scid-2010" and isnotnull(Context)
| extend avdata=parsejson(Context)
| extend AVMode = iif(tostring(avdata[0][0]) == '0', 'Active' , iif(tostring(avdata[0][0]) == '1', 'Passive' ,iif(tostring(avdata[0][0]) == '4', 'EDR Blocked' ,'Unknown')))
| project DeviceId, DeviceName, AVMode, LoggedOnUsers, LastSeenTime
