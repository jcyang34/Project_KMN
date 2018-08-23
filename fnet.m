function [ anew ] = fnet( p,t,pnew)
[pn,input_str] = mapminmax(p) ;
[tn,output_str] = mapminmax(t) ;
net=newff(pn,tn,[10 21],{'purelin','logsig','purelin'});
net.trainParam.show=10;
net.trainParam.lr=0.05; 
net.trainParam.epochs=500000;
net.trainParam.goal=0.65*10^(-3);  
net.divideFcn = '';
net=train(net,pn,tn); 
an=sim(net,pn);
pnewn = mapminmax('apply',pnew,input_str);
anewn=sim(net,pnewn); 
anew = mapminmax('reverse',anewn,output_str);
end