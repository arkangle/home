#!/usr/bin/python

def getFileInfo(name):
  power_dir = "/sys/class/power_supply/"
  file = open(power_dir +name)
  rc = file.read()
  file.close()
  return rc.rstrip()
    
def getPerc(now,full):
  now = int(now)
  full = int(full)
  perc = (now * 1000) / full
  perc /= 10.0
  return perc


charge_full = getFileInfo("BAT0/charge_full")
charge_now = getFileInfo("BAT0/charge_now")
charge_perc = getPerc(charge_now,charge_full)

alarm = getFileInfo("BAT0/alarm")
isalarm = alarm == "1"

online = getFileInfo("ADP1/online")
isonline = online == "1"

output = str(charge_perc) + " "
if charge_perc == 100.0:
  output += "="
elif isonline:
  output += "+"
elif isalarm:
  output += "!"
else:
  output += "-"

print(output)
