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
	freq = dict(sorted(freq.items(),key=lambda item: item[1],reverse = True))
	cnt = 0
	for key, val in freq.items():
		if int(sys.argv[2])==cnt:
			break
		print("{key} {value}".format(key=key,value=val))
		cnt += 1
