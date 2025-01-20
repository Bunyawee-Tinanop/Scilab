clc; clear all;
deff("y = f(x)","y=(3*x)+(sin(x))-(%e^x)")
x1 = input("first Num :")
x2 = input("Second Num :")
e = input("Accuracy :")
N = input("Rund:")
c = 1
printf("round \tx1\t \tx2\t \tm\t \tf(m) \tEabs\n")
while (c < N), m = (x1+x2)/2
    condition = abs((x1-x2)/x1) < e
    
    if condition
        break
    end
    printf("%.f \t%f \t%f \t%f \t%f %f\n",c,x1,x2,m,f(m),abs((x1-x2)/x1))
    if f(x)*f(a)>0
        a = x
    else
        b = x
    end
c = c+1
end
printf(c,x)
