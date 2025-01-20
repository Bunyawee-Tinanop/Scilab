clc; clear all;
x = -0.9
e = exp(x)
es = (0.5*10^(2-3))
printf("e = %f\n",e)
printf("es = %f\n\n",es)

et1 = (abs(e-1)/abs(e))*100
printf("e^(-x) = 1\n")
printf("et1 = %f%%\n\n",et1)

ex = 1-x
et2 = (abs(e-ex)/abs(e))*100
ea2 = (abs(ex-1)/abs(ex))*100
printf("e^(-x) = %f\n", ex)
printf("et2 = %f%%\n",et2)
printf("ea2 = %f%%\n\n",ea2)

i = 1
d = 3
while (%t)
    i = i+1
    ei =0
    if modulo(i,2)==0 then
        ei = ei+ ex
        ex = ex + (x^i)/factorial(i)
        et = (abs(e-ex)/abs(e))*100
        ea = (abs(ex-ei)/abs(ex))*100
        
        printf("e^(-x) = %f\n",ex)
        printf("et%d = %f%%\n",d,et)
        printf("ea%d = %f%%\n\n",d,ea)
        
        if ea < es then
            printf("End")
            break
        else
            clear Et
            clear Ea
            clear ei
            d = d+1
            continue
        end
    elseif modulo(i,2)==1 then
        ei = ei + ex
        ex = ex - (x^i)/factorial(i)
        et = (abs(e-ex)/abs(e))*100
        ea = (abs(ex-ei)/abs(ex))*100
        printf("e^(-x) = %f\n",ex)
        printf("et%d = %f%%\n",d,et)
        printf("ea%d = %f%%\n\n",d,ea)
        //printf("et %d = 5f \t ea %d = %f \n",(i+1),et,(i+1),ea)
        if ea < es then
            printf("End")
            break
        else
            clear et
            clear ea
            clear ei
            d = d + 1
            continue
        end
    end
end
