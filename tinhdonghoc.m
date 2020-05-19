syms theta1 theta2 theta3
assume(theta1,'real');
assume(theta2,'real');
assume(theta3,'real');
theta = [theta1;theta2;theta3];
qtheta=diff(theta);
q2theta=diff(qtheta);
%Tham so khoi luong
   m2= 217.55 ;
   m3= 73.49 ;
   g=9.8;
   a2= 83.1 ;
   a3= 60.76 ;
   m1= 336.08;
%Tinh toan ma tran khoi luong
T1 = [ cos(theta1) 0   sin(theta1)    30*cos(theta1);
       sin(theta1) 0   -cos(theta1)    30*sin(theta1);
       0            1       0           150;
       0            0       0            1];

T2 = [ cos(theta2) -sin(theta2)   0   125*cos(theta2);
       sin(theta2) cos(theta2)    0   125*sin(theta2);
       0            0             1       0;
       0            0             0        1];
   
T3 = [ cos(theta3) -sin(theta3)   0   75*cos(theta3);
       sin(theta3) cos(theta3)    0   75*sin(theta3);
       0            0               1     0;
       0            0               0       1];
   
   T02=T1*T2;
   T03=T1*T2*T3;
   %cac ma tran cosin chi huong
   A01=T1(1:3,1:3);
   A02=T02(1:3,1:3);
   A03=T03(1:3,1:3);
   %ma tran vi tri
   R1=T1(1:3,4);
   R2=T02(1:3,4);
   R3=simplify(T03(1:3,4))
   
%ve_x = simplify(-5*0.2*sin(theta1)*(15*cos(theta2 + theta3) + 25*cos(theta2) + 6)+5*cos(theta1)*(-15*0.4*sin(theta2+theta3) -25*0.2*sin(theta2)))
%ve_y = simplify(5*0.2*cos(theta1)*(15*cos(theta2 + theta3) + 25*cos(theta2) + 6)+5*sin(theta1)*(-15*0.4*sin(theta2+theta3) -25*0.2*sin(theta2)))
%ve_z = simplify(75*0.4*cos(theta2+theta3) + 125*0.2*cos(theta2))