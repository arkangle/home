#!/usr/bin/python3
import subprocess
def status(description):
    if description == "Charging":
        return "+"
    elif description == "Discharging":
        return "-"
    else:
        return "="

output = subprocess.check_output(['acpi']).decode('ascii')
outputSplit = output.split(",")
percent = outputSplit[1].strip()
chargeSplit = outputSplit[0].split(":")
stat = status(chargeSplit[1].strip())
qReturn = [percent, stat]
if stat != "=":
    remainDesc = outputSplit[2].strip()
    remainSplit = remainDesc.split(" ")
    remain = remainSplit[0]
    qReturn.append(remain)

print(" ".join(qReturn))
