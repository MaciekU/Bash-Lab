#!/bin/bash

cat | tr -cs a-z  \\012 | grep -c ^
