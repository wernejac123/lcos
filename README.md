# lcos
FORTRAN 77 program to solve triangles using the laws of cosines. Caution: there are rounding errors appearing at 5 to 7 decimal places despite variables being DOUBLEPRECISION

This has been tested in both FreeDOS and Linux.

BUG: as of Apr 5, 2026 there is a bug where my programs are losing precision (calculating numbers as REAL instead of DOUBLEPRECISON). NOTE TO SELF: fix this by using D like 3.0D0 (DOUBLEPRECISION engineering notation) for all numbers including input from user)
