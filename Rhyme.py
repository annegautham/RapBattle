import pronouncing as pro
import sys

#uses sys variables to get inputs from bash script
str1 = sys.argv[1]
str2 = sys.argv[2]

print(str1 in pro.rhymes(str2))


