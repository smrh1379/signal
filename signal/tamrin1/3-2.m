n=-20:20
x=(exp(0.1 .* n).*((n>=0)-(n>=20)));
x2=repmat(x,1,3)
stem(x2);
