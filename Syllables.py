import pronouncing as pro
import sys

#uses sys variables to get inputs from bash script
str = sys.argv[1]
phones = [pro.phones_for_word(p)[0] for p in str.split()]
syllables = sum([pro.syllable_count(p) for p in phones])
print(syllables)

