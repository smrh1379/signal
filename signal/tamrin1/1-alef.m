%....................ALEF
n1=1:9;
n2=n1+2;
n3=union(n1,n2);
x1=zeros(size(n3));
x=[4 3 2 1 0 1 2 3 4];
x1(n1)=x1(n1)+x.*2;
x1(n2)=x1(n2)+x.*4;
stem(n3,x1);
%...........................B
n1=1:9;
n2=-1*n1+4;
n3=-1*n1;
x=[4 3 2 1 0 1 2 3 4];
n4=union(n1,n2);
n4=union(n4,n3);
x2=zeros(size(n4));
t=zeros(size(n1));
t(1:4)=x(2:2:9);
x2(n1+10)=x;
x2(n1+10)=x2(n1+10).*t;
x2(n3+10)=2*x;
stem(n4,x2);