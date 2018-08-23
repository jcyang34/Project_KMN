function [out,ctr,sum] = Kmean1( X,k )
opts = statset('Display','final');
X=X';
[Idx,Ctrs,SumD,D] = kmeans(X,k,'Replicates',3,'Options',opts);
for i=1:k,
    scatter(X(Idx==i,1),zeros(1,size(X(Idx==i,1),1)),14);
    hold on
    tip=['Cluster ',char(k)+'0'];
    legend(tip);
    out{1,i}=X(Idx==i,:)';
end
plot(Ctrs(:,1),zeros(1,size(Ctrs(:,1),1)),'kx','MarkerSize',14,'LineWidth',4)
ctr=Ctrs';
sum=SumD';
hold off
end