  for i = linspace(0,3.14,500)
      theta1 = i;
      theta2 = i;
      theta3 = i;
  fx = -5*(4*cos(theta1) - 3*sin(theta1))*(15*cos(theta2 + theta3) + 25*cos(theta2) + 6);
  plot(theta1,fx,'.r',theta2,fx,'.r',theta3,fx,'.r');
  hold on;
  fy = 375*cos(theta1)*sin(theta2) - (110985*cos(theta2)*cos(theta3))/2 - 364425*cos(theta2) + 500*sin(theta1)*sin(theta2) + (110985*sin(theta2)*sin(theta3))/2 + 300*cos(theta2)*sin(theta1)*sin(theta3) + 300*cos(theta3)*sin(theta1)*sin(theta2) + 225*cos(theta1)*cos(theta2)*sin(theta3) + 225*cos(theta1)*cos(theta3)*sin(theta2);
  plot(theta1,fy,'.g',theta2,fy,'.g',theta3,fy,'.g');
  hold on;
  fz = (110985*sin(theta2)*sin(theta3))/2 - (110985*cos(theta2)*cos(theta3))/2 + 300*cos(theta2)*sin(theta1)*sin(theta3) + 300*cos(theta3)*sin(theta1)*sin(theta2) + 225*cos(theta1)*cos(theta2)*sin(theta3) + 225*cos(theta1)*cos(theta3)*sin(theta2);
  plot(theta1,fz,'.b',theta2,fz,'.b',theta3,fz,'.b');    
  hold on;
  ylabel('N');
  xlabel('t');
  grid on
  end