function [s,w]=entropy(x)
[n,m]=size(x);
ps.ymin=0.002;
ps.ymax=0.996;
ps.yrange=ps.ymax-ps.ymin;
[X,Xps]=mapminmax(x',ps);
X=X';
for j=1:m
p(:,j)=X(:,j)/sum(X(:,j));
end
k=1/log(n);
for j=1:m
e(j)=-k*sum(p(:,j).*log(p(:,j)));
end
d=ones(1,m)-e;
w=d./sum(d);
s=p*w';