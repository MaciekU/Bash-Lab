#!/bin/bash

#Count each word frequency (sort, uniq -c, )

cat | tr ' ' '\n' | sort | uniq -c 
