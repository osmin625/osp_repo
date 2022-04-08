#!/usr/bin/python3
import sys
import re
if __name__=='__main__':
	data = open(sys.argv[1],"r")
	f = data.readlines()
	wordlist = []
	#print(f)
	for lines in f:
		wordlist.extend(re.split('\W+',lines))
	wordlist = list(set(wordlist))
	wordlist = sorted(wordlist)
	print(wordlist)
		
