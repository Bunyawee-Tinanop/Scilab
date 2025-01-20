clc; clear all;
deff("y=f(x)","y=(3*x)+(sin(x)-%e^x)")
deff("z=g(x)","z=3+cos(x)-%e^x")
x0 = input("Enter x0 :")
e = input("Enter e : ")
N = 100
i = 1
printf("iteration f(x0) xi f(xi) g(x) Eabs\n")
while (i <= N)
    xi = x0 - (f(x0)/g(x0))
    condition = abs((xi-x0)/xi)
    printf("%d %f %f %f %f %f\n", i, f(x0),xi,f(xi),g(xi),condition)
    if condition < e then
        break
    end
    i = i +1
    x0 = xi
end
printf("root at %d iter, is %f\n",i,xi)
