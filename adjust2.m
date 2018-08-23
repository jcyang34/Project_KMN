function [ w_out] = adjust(index,stand,w_in )
syms w1 w2 w3 w4 w5 w6 w7 w8 w9 w10 w11 w12;
w=[w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12];
a1= 0.4738 ; a2=0.3406 ; a3=0.1174; a4=0.0682;
for i =1:3
y1=w(4*i+1,1:4*i)*stand(13:16,1);
end
for i=1:13
    score1= stand(i,1:4)*w_in(1,1:4)'./a1; 
    score2= stand(i,5:8)*w_in(1,5:8)'./a2; 
    score3= stand(i,9:12)*w_in(1,9:12)'./a3; 
    score4= stand(i,13:16)*w_in(1,13:16)'./a4; 
    totalscore(1,i)=(y1+score1).*a1./(1+sum(w(1,1:4))) +
     (y2+score2).*a2./(1+sum(w(1,5:8))) + (y3+score3).*a3./(1+sum(w(1,9:12))) + score4.*a4;
    f(1,i)=totalscore(1,i)/
end
index(1,2)
[w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12]=
solve(f(1,1),f(1,2),f(1,3),f(1,4),f(1,5),f(1,6),f(1,7),f(1,8),f(1,9),f(1,10),f(1,11),f(1,12));
w_out = w;
end
