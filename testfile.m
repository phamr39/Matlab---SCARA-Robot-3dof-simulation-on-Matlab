for t=linspace(0,3.14,100);
q1=t;q2=t;q3=t;

%vi tri
re_x = 5*cos(q1)*(15*cos(q2 + q3) + 25*cos(q2) + 6);
re_y = 5*sin(q1)*(15*cos(q2 + q3) + 25*cos(q2) + 6);
re_z = 75*sin(q2 + q3) + 125*sin(q2) + 150;

%van toc
%Q1 = 0.2;Q2 = 0.2;Q3 =0.2;
ve_x = 5*sin(q1)*(15*cos(q2 + q3) + 25*cos(q2) + 6);%- sin(q1)*(30+75*cos(q2+q3)+125*cos(q2));
ve_y = cos(q1)*(15*cos(q2 + q3) + 25*cos(q2) + 6) - 5*sin(q1)*(6*sin(q2 + q3) + 5*sin(q2));
ve_z = 30*cos(q2 + q3) + 25*cos(q2);

%gia toc diff
%QQ1= 0;QQ2= 0;QQ3= 0;
ae_x = -6+ 0*t;
ae_y =-5*11;
ae_z = 0;
plot(t,ve_x,'r--');
hold on 
plot (t,re_x,'b.');
hold on
plot (t,ae_x,'y-');
%plot(t,re_y,'b.',t,ve_y,'r--',t,ae_y,'y-'),title('do thi vi tri,van toc va gia toc khau thao tac theo truc y'),legend('re_y','ve_y','ae_y'),xlabel('t'),ylabel('Y')
%plot(t,re_z,'b.',t,ve_z,'r+',t,ae_z,'y-'),title('do thi vi tri,van toc va gia toc khau thao tac theo truc z'),legend('re_z','ve_z','ae_z'),xlabel('t'),ylabel('Z');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on;
grid on;
end
