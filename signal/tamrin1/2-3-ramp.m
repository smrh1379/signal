n=-10:10;
x1=n.*(n>=0);
x2=-n.*(-n>=0);
x=3.*(x1+x2);
stem(n,x);