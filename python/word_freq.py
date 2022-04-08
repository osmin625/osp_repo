#!/usr/bin/python3
import sys
import re
if __name__=='__main__':
	data = open(sys.argv[1],"r")
	f = data.readlines()
	wordlist = []
	freq = {}
	#print(f)
	for lines in f:
		wordlist.extend(re.split('\W+',lines))
	keywords = sorted(list(set(wordlist))[1:])
	#print(wordlist)
	for w in keywords:
		freq[w] = wordlist.count(w)
	for key, val in freq.items():
	    print("{key} {value}".format(key=key,value=val))

		
