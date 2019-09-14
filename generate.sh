#!/bin/bash

#Create a script that can generate N random sentences (random a-z characters), parameters:
#MIN, MAX sentence length (in words)
#MIN, MAX word length
#N - number of senteces

MIN_words=1
MAX_words=3
random_val1=$(( ( RANDOM % $(($MAX_words-$MIN_words+1)) )  + $MIN_words )) 
N_sentences=5
MIN_word_len=3
MAX_word_len=6
random_val2=$(( ( RANDOM % $(($MAX_word_len-$MIN_word_len+1)) )  + $MIN_word_len ))

copy_random_val1=$random_val1
while [ $N_sentences -ne 0 ] 
do
    while [ $copy_random_val1 -ne 0 ]
    do
    cat /dev/urandom | tr -cd 'a-z' | head -c $random_val2 #| tr '\n' ' '
    copy_random_val1=$(($copy_random_val1 - 1))
    echo -n " "
    done
copy_random_val1=$random_val1
N_sentences=$(($N_sentences - 1))
echo -e "\n"
done




