# lcos
FORTRAN 77 program to solve triangles using the laws of cosines.

When prompted with "SOLVE FOR:" enter either 'A', 'B', 'C', 'X', 'Y' or 'Z' enclosed in single

quotes to tell the program it is a CHARACTER. It will crash the program in FreeDOS if you

enter it without ' ' around it; Linux it doesn't seem to matter but still a good idea. To

keep double precision, enter all numbers in the format 3.0D0 seperated by either a space or

commas. If you enter it as 3.0, it will cause rounding errors and is essentially calcutating

as REAL not DOUBLEPRECISION. 

This has been tested in both FreeDOS and Linux.

 The Bug I had earlier with doubleprecision numbers being truncated to real has been fixed.

 I have not tested it yet in FreeDOS with these new changes. I will update this README when I do.
