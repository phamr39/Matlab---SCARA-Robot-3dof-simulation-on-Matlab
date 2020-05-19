
a1=75; a2=125 ;a3=125;
q1=0.2*t;q2=0.2*t;q3=0.2*t;
t=linspace(0,10,100);
%vi tri
re_x = a1*cos(q1)+ a2*cos(q1+q2);
re_y = a1*sin(q1)+ a2*sin(q1+q2);
re_z = a1*sin(q2)+ a2*sin(q3+q2);

%van toc
Q1 = 0.2;Q2 = 0.2;Q3 =0.2;
ve_x = -a1*Q1*sin(q1)-a2*(Q1+Q2)*sin(q1+q2);
ve_y = a1*Q1*cos(q1)+a2*(Q1+Q2)*cos(q1+q2);
ve_z = a2*Q1*cos(q2)+a3*(Q2+Q3)*cos(q2+q3);

%gia toc
QQ1= 0;QQ2= 0;QQ3= 0;
ae_x =QQ1*(a2*sin(q1 + q2) + a1*sin(q1)) - Q1*(Q1*(a2*cos(q1 + q2) + a1*cos(q1)) + Q2*a2*cos(q1 + q2)) - QQ2*a2*sin(q1 + q2) - Q2*a2*cos(q1 + q2)*(Q1 + Q2);
ae_y =QQ1*(a2*sin(q1 + q2) - a1*cos(q1)) - Q1*(Q1*(a2*cos(q1 + q2) + a1*sin(q1)) + Q2*a2*cos(q1 + q2)) - QQ2*a2*sin(q1 + q2) - Q2*a2*cos(q1 + q2)*(Q1 + Q2);
ae_z =QQ1*(a3*sin(q2 + q3) - a2*cos(q2)) - Q1*(Q1*(a3*cos(q1 + q2) + a2*sin(q1)) + Q2*a3*cos(q1 + q2)) - QQ2*a3*sin(q1 + q2) - Q2*a3*cos(q1 + q2)*(Q1 + Q2);
%plot(t,re_x,'b.',t,ve_x,'r--',t,ae_x,'y-'),title('do thi vi tri,van toc va gia toc khau thao tac theo truc x'),legend('re_x','ve_x','ae_x'),xlabel('t'),ylabel('X');
%plot(t,re_y,'b.',t,ve_y,'r--',t,ae_y,'y-'),title('do thi vi tri,van toc va gia toc khau thao tac theo truc y'),legend('re_y','ve_y','ae_y'),xlabel('t'),ylabel('Y');
plot(t,re_z,'b.',t,ve_z,'r+',t,ae_z,'y-'),title('do thi vi tri,van toc va gia toc khau thao tac theo truc z'),legend('re_z','ve_z','ae_z'),xlabel('t'),ylabel('Z');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



