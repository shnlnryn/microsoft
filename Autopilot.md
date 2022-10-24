
# These scripts are for onboarding a device to  Microsoft AutoPilot-  You will need to extract the device AutoPilot hash, or hardware ID.

#To extract the details from a brand new computer which is in OOBE, insert this USB and power on the the device. Do not boot from this USB.

1. When you see the "Let's start with region" screen, press Shift +F10 to open up Command Prompt.
2. You now need to switch to the USB drive. To identify which drivr letter is assigned, in the the command prompt, type DISKPART. You will see a list of drives including the USB drive. type 'exit' a to exit out of Diskpart. Change to the USB drive directory where the Autopilot files are.
3. Type GetAutopilot.cmd 
This should generate a CSV file called DeviceHash.csv 
4. You can now import the Hash into the Autopilot through Microsoft Endpoint Manager admin center ( endpoint.micrososft.com)  or run GetAutopilot.cmd on other devices as it will keep appending the csv file.



