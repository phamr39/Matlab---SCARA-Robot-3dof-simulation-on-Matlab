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
   A01=T1(1:3,1:3)
   A02=T02(1:3,1:3)
   A03=T03(1:3,1:3)
   %ma tran vi tri
   R1=T1(1:3,4)
   R2=T02(1:3,4)
   R3=T03(1:3,4)
   %Ma tran jacobi tinh tien va jacobi quay
   JT1 = jacobian(R1,theta)
   JT2 = jacobian(R2,theta)
   JT3 = jacobian(R3,theta)
   JR1 = [0 0 0;0 0 0;1 0 0]
   JR2 = [0 0 0;0 0 0;0 1 0]
   JR3 = [0 0 0;0 0 0;0 1 1]
   %Ma tran momen quan tinh cac khau
   %Don vi: g*mm^2
   Ic1=[311041.62 0 0;0 976099.75 0; 0 0 1092481.69];
   Ic2=[93505.82 0 0;0 474540.89 0; 0 0 481254.06];
   Ic3=[17602.78 0 0;0 59672.56 0;0 0 64175.29];
   %tinh ma tran M
   M= JT1'*m1*JT1+JR1'*A01*Ic1*A01'*JR1 + JT2'*m2*JT2+JR2'*A02*Ic2*A02'*JR2 + JT3'*m3*JT3+JR3'*A03*Ic3*A03'*JR3;
   M_s=simplify(M)
   %Tinh ma tran g

   mat_g = [0;m2*g*a2*cos(theta2)+m3*g*125*cos(theta2) ; m3*g*a3*cos(theta3)];

   %Tinh ma tran C
   m11 = simplify(M_s(1,1));
   m12 = simplify(M_s(1,2));
   m13 = simplify(M_s(1,3));
   m21 = simplify(M_s(2,1));
   m22 = simplify(M_s(2,2));
   m23 = simplify(M_s(2,3));
   m31 = simplify(M_s(3,1));
   m32 = simplify(M_s(3,2));
   m33 = simplify(M_s(3,3));
   Me=[m11 m12 m13;m21 m22 m23;m31 m32 m33]
   
   T = simplify((1/2) * (qtheta.') *Me * qtheta)
   dT = diff(T,theta)    %bug
   Cqdot = simplify( diff(Me,theta)*qtheta-T.')
   %tinh ma tran luc momen can thiet
   u = Me*q2theta + Cqdot + mat_g;
   ue = simplify(u)
   %max xap xi 3*10^7 mN.mm^2 vs khop 2
   % 1*10^7 mN.mm^2 vs khop 1