#!/usr/bin/python3
import subprocess
output = subprocess.check_output(['acpi']).decode('ascii')
outputSplit = output.split(",")
percent = outputSplit[1].strip()
chargeSplit = outputSplit[0].split(":")
charge = chargeSplit[1].strip()
isCharging = charge == "Charging"
remainDesc = outputSplit[2].strip()
qReturn = [percent]
if "zero rate" in remainDesc:
    qReturn.append("=")
else:
    remainSplit = remainDesc.split(" ")
    remain = remainSplit[0]
    sign = "+" if isCharging else "-"
    qReturn.append(sign)
    qReturn.append(remain)

print(" ".join(qReturn))
