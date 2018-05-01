import sys
 

f = open('config.php', 'r')
configtext  = f.read()
passwordpos = configtext.find("password");
newlinepos  = configtext.find("\n", passwordpos)
passwordold = configtext[passwordpos+10:newlinepos-2]
passwordnew = "test0000"
f.close()
f = open('config.php', 'w')
print(passwordpos)
print(passwordold)
print(configtext)
configtext = configtext.replace(passwordold, passwordnew)
print(configtext)
f.write(configtext)


