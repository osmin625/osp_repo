#!/usr/bin/python3
import sys
import re
if __name__=='__main__':
	f = open(sys.argv[1],"r")
	f = f.readlines()
	#print(f)
	for lines in f:
		words = re.split('\W+',lines)
		print(words)
