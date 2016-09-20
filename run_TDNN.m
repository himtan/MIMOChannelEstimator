function r = run_TDNN(inputs)
    load nn_workspace
    global Pi;
    inputs1(1,1)=real(inputs(1,1));
    inputs1(1,2)=imag(inputs(1,1));
    inputs1(1,3)=real(inputs(2,1));
    inputs1(1,4)=imag(inputs(2,1));
    inputs1=inputs1';
    temp=sim(net,inputs1,Pi);
    Pi=inputs1;
    r1=temp(1,1)+temp(2,1)*j;
    r2=temp(3,1)+temp(4,1)*j;
    r=[r1;r2];
   

