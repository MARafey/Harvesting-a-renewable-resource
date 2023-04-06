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
 syms r y K E t;
 
 %the equation to be solved is saved in the variable with the conditon
 eqn = ( r .* y) .*(1 - (y./K)) - (E.* y) == W;
 
 %Equation is solved with respect to y
 S = solve(eqn , y );
 %displays the equation and solution
 disp(eqn);
 disp('After simplification : ');
 disp('The equilibrium points are found by setting dy/dt = 0 and solving the 
equation for y');
disp('y = ');
 pretty(S);
 disp('If E < r, then this second solution is positive and is a possible 
equilibrium population.');
 
 disp('--------------------------------------------------------------' );
 
 disp('Now to find the maximum yield.');
 
 Y=E*K*(1-E./r)==0;%saving the equation within a single variable with the 
condition 
 S=diff(Y); %sloving the equation through diffrentiation so we us ethe diff() 
command
 
 %displaying the solution
 disp(Y);
 disp('E = ');
 pretty(S);
 P=solve(S);
 pretty(P);
 
 %Ask user if they wish to see the graph
 prompt = "Do u want to see the graph (1,0) : ";
 x = input(prompt);
 if(x==1)
 f=2*y*(1-y)-y;
 fplot(f);
 grid on;
 %command to set at which location of the grid need to be
 %viewed
 axis([00 3 -10 1]);
 
 %naming the axis
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
 disp('Thank you for using A-R-N software house.')
 disp(':)');