#!/bin/bash
# Retrieve current Alexa rank of www.grafen.com.tr
./get_alexa_rank.py www.grafen.com.tr > rawrank.txt
# Delete second line since we don't need it:
sed -i "2d" rawrank.txt
# Delete all the characters except numbers to get actual/pure rank value and append the resulting value into the original data file via ">>":
sed -i 's/[^.0-9][^.0-9]*/ /g' rawrank.txt
# Write/append via ">>" current date into a *.txt file:
date +"%m-%d-%Y" > date.txt
# Paste both date and rank simultaneously by appending them as columns:
paste <(cut -d " " -f1 date.txt) <(cut -d " " -f2 rawrank.txt) >> rank_data.txt
 
