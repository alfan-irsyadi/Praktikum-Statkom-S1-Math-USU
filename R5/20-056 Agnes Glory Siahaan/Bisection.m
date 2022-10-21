a = 2;
b = -3;
e = 0.01;
f = inline('x*exp(-x)+1')

fprintf('I\t\t\t a\t\t\t b\t\t\t  x\t\t\t f(x)\n');
if f(a)*f(b)>0
    disp('Tidak ada nilai akar yang memenuhi')
else
    x = (a+b)/2;
    n = 0;
    while abs(f(x))>e
        n=n+1;
        fprintf('%g\t %10.4g\t %10.4g\t %10.4g\t  %10.4g\n',n,a,b,x,f(x))
        if f(a)*f(x)<0
            b = x;
        else 
            a = x;
        end
        x = (a+b)/2;
    end
    fprintf ('%g\t %10.4g\t %10.4g\t %10.4g\t  %10.4g\n',n+1,a,b,x,f(x))
end 
       