# lcos
FORTRAN 77 program to solve triangles using the laws of cosines.

When prompted with "SOLVE FOR:" enter either 'A', 'B', 'C', 'X', 'Y' or 'Z' enclosed in single

quotes to tell the program it is a CHARACTER. It will crash the program in FreeDOS if you

enter it without ' ' around it; Linux it doesn't seem to matter but still a good idea. To

keep double precision, enter all numbers in the format 3.0D0 seperated by either a space or

commas. If you enter it as 3.0, it will cause rounding errors and is essentially calcutating

as REAL not DOUBLEPRECISION. 

This has been tested in both FreeDOS and Linux. In one test it resulted in acos(-1)* (180/pi)

which results in 180 degrees on a ti83 calculator, but my FORTRAN program showed 179.999....

with slightly less acuracy than other numbers I tested. I tried to test a variety of numbers

but I did not try extremely large or extremely small numbers. Sometimes a calculation results

in 0.0000000... degrees which I am assuming means the dimensions for the triangle are

physically impossible but I can not say for sure). I still wouldn't count on this program

for extremely important calculations (or at least double check it with a calculator).

The Bug I had earlier with double precision numbers being truncated to real has been fixed.
