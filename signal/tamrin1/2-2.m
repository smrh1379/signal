n=-10:10;
n0=0;
x=(n>=n0+5)- (n>=n0-1) + 8.*(n==n0+3);
stem(n,x);