cc=1;
  for theta1= -120:1.125:120
    for theta2=-90:1.125:90
        for theta3=0.01:0.0125:0.07
         
                x(cc)=5*cos(theta1)*(15*cos(theta2 + theta3) + 25*cos(theta2) + 6);
                %x(cc)=0;
                y(cc)=5*sin(theta1)*(15*cos(theta2 + theta3) + 25*cos(theta2) + 6);
                %y(cc)=0;
                z(cc)=75*sin(theta2 + theta3) + 125*sin(theta2) + 150;
              cc=cc+1;  
            end
        end
  end
plot3(x,y,z)
hold on
grid on
xlabel('truc x')
ylabel('truc y')
zlabel('truc z')
