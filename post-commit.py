#!/usr/bin/env python
import sys
 

f = open('/home/areso/Documents/Seabattles2/config.php', 'r')
configtext  = f.read()
passwordpos = configtext.find("PASSWORD");
newlinepos  = configtext.find("\n", passwordpos)
passwordold = configtext[passwordpos+11:newlinepos-2]
passwordnew = "mystrongpassword"
f.close()
f = open('/home/areso/Documents/Seabattles2/config.php', 'w')
print(passwordpos)
print(passwordold)
print(configtext)
configtext = configtext.replace(passwordold, passwordnew)
print(configtext)
f.write(configtext)


