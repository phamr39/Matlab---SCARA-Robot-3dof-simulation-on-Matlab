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
 P1 = [0; 0; 3360.8];
 P2 = [0; 0; 2175.5];
 P3 = [0; 0; 734.9];
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
   
   T03=T1*T2*T3;
      %cac ma tran cosin chi huong
   A01=T1(1:3,1:3);
   A02=T02(1:3,1:3);
   A03=T03(1:3,1:3);
   %ma tran vi tri
   R1=T1(1:3,4);
   R2=T02(1:3,4);
   R3=T03(1:3,4);
   %Ma tran jacobi tinh tien va jacobi quay
   JT1 = transpose(jacobian(R1,theta));
   JT2 = transpose(jacobian(R2,theta));
   JT3 = transpose(jacobian(R3,theta));
   %ma tran vi tri
   R=T03(1:3,4)
   %tinh toan luc
   %Ma tran jacobi tinh tien 
   JF = jacobian(R,theta);
   J = transpose(JF)
  %Tinh luc tac dung t?i khop 1
  f = [3;4;5];
  luc = -J*f-(JT1*P1 + JT2*P2 + JT3*P3);
  final_luc = simplify(luc);
  Tx = final_luc(1,1)
  Ty = final_luc(2,1)
  Tz = final_luc(3,1)