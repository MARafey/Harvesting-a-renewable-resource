%flag to ask if the code should run
flag=1;
while(flag)
 clc;
 %Displays the name of software house and owner names
 disp('Welcome to A-R-N Software House');
 disp(' Owner:');
 disp(' Ayra Alamdar (21I-2968)' );
 disp(' Naima Zafar (21I-0698)' );
 disp(' Muhammad Abdur Rafey (21I-0705)' );
 %User enters 1 to continue
 prompt = "Press one to start : ";
 x = input(prompt);
 %if input is one the program will run
 if(x==1)
 
 W=0;%default condition for equation to be solved
 
 %Asks user if they want to enter a new boundary value entered by user
 % or run the on the default value
 disp('Do you want to enter boundry values');
 disp('Press 1 for yes');
 disp('Press 2 for no');
 prompt = " Your choice: ";
 x = input(prompt);
 if(x==1)
 prompt = " Enter new boundry value: ";
 COL = input(prompt);
 %the value entered by user will be saved in the condition valriable
 %to be used to solve the equation
 W=COL;
 end
 
 %declaring variables to be used in equation
 syms r y K h;
 
 disp('The equilibrium points are found by setting dy/dt = 0 and solving the 
resulting equation for y');
 disp('dy/dx = ');
 
 
 %the equation to be solved is saved in the variable with the conditon
 eqn = r*(1-y/K)*y-h == W;
 
 %Equation is solved with respect to y
 S = solve(eqn , y );
 %displays the equation and solution
 disp(eqn);
 disp('Use the quadratic equation to determine y');
 pretty(S);
 
 disp('These are equilibrium populations as long as' )
 
 %saving the equation within a single variable with the condition 
 eqn= (K^2) - (4*K*h)/r > 0;
 
 %Equation is solved with respect to h
 S=solve(eqn,h);
 
 %display
 disp(eqn);
 pretty(S);
 
 prompt = "Do u want to see the graph (1,0) : ";
 x = input(prompt);
 if(x==1)
 figure(1);
 syms y;
 X=(1-y)*y-1/8;
 fplot(X);
 grid on;
 
 %command to set at which location of the grid need to be
 %viewed
 axis([-2 3 -5 1]);
 
 %naming the axis
 title('Part B');
 xlabel('y');
 ylabel('f');
 
 figure(2);
 
 syms y;
 X=(1-y)*y-1;
 fplot(X)
 grid on;
 
 %command to set at which location of the grid need to be
 %viewed
 axis([0 1 -1 1]);
 
 %naming the axis
 title('Part D');
 xlabel('y');
ylabel('f');
 
 figure(3);%
 
 syms y;
 X=(1-y)*y-1/4;
 fplot(X)
 grid on;
 
 %command to set at which location of the grid need to be
 %viewed
 axis([0 1 -0.8 0.6]);
 
 %naming the axis
 title('Part E');
 xlabel('y');
 ylabel('f');
 
 end
 end
 
 %asks user if they wish to run the program again or not
 %when the input is zero the flag will become false and code will not
 %run again
 prompt = "Press zero to exit the code : ";
 flag = input(prompt);
end
disp('Thank you for using A-R-N software house.' )
 disp(':)');