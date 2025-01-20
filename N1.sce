clc; clear all;
x = 0
e = exp(0)
exact = (%pi)*(e)+cos(10)
app = 2.297121
E = exact - app
Eabs = abs(E)
Erel = Eabs/abs(exact)
Eper = Erel*100
printf("E = %.6f",E)
printf("\nEabs = %.6f",Eabs)
printf("\nErel = %.6f",Erel)
printf("\nEper = %.6f",Eper)
