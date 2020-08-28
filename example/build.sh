#!/bin/bash


rm -f *.o real-fft
gcc  -static -I../  data_processor.c data_processor_test.c -L../ -lkissfft -lm -o real-fft
