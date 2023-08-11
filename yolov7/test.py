import os
import subprocess
pid = os.getpid()
output = subprocess.check_output(["ps", "-o", "stat", "-p", str(pid)])
lines = output.strip().decode('utf-8')
for line in lines:
   print(line)
   
if "+" in lines:
  print ("Running in foreground")
else:
  print ("Running in background")
