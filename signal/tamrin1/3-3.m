n=-31:31;
x=(sin(0.1*pi*n)).*((n>=0) - (n>=10));
x3=repmat(x,1,4);
figure , stem(x3);
