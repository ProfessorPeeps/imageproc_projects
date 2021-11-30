% Juan Silva
% Sept. 1, 2019
% ECE 595
% Exercise 4.6

%Prompts user to enter inputs
height = input('Enter height (in.): ');
mass = input('Enter mass (lb.): ');

%Calls function to do conversion
[cm, kg] = bodyConversion(height, mass);

fprintf("\nA person who is %d in. long and weighs %d lb.\n", height, mass);
fprintf("is %.2f cm. long and weighs %.2f kg.\n", cm, kg);
