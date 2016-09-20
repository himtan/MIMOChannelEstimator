clc
[l,m]=size(trainip);
trainip1(1:l,1)=real(trainip(1:l,1));
trainip1(1:l,2)=imag(trainip(1:l,1));
trainip1(1:l,3)=real(trainip(1:l,2));
trainip1(1:l,4)=imag(trainip(1:l,2));
[l,m]=size(trainop);
trainop1(1:l,1)=real(trainop(1:l,1));
trainop1(1:l,2)=imag(trainop(1:l,1));
trainop1(1:l,3)=real(trainop(1:l,2));
trainop1(1:l,4)=imag(trainop(1:l,2));
trainip1=trainip1';
trainop1=trainop1';
for i=1:4
    for j=1:l
        if abs(trainip1(i,j))<0.001
            trainip1(i,j)=0;
        end
    end
end
for i=1:4
    for j=1:l
        if abs(trainop1(i,j))<0.001
            trainop1(i,j)=0;
        end
    end
end

p=trainop1;
t=trainip1;
p=con2seq(p);
t=con2seq(t);
Pi=[0;0;0;0];
Pi=con2seq(Pi);
net=newfftd(p,t,[0:1],10);
net = train(net,p,t,Pi);
save(nn_workspace);

