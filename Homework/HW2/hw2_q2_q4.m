%Juan Silva

clear, clc, close all
format short, format compact

%Queston 2
%Measure  how slow the for command is using the tic toc timer

%Test 1
fprintf("Question 2: \n");
tic;
    for i = 1:10^6; 
        sin(i);
    end;
toc;

%Test 2
tic;
    i = 1:10^6; 
    sin(i);
toc;

%Queston 3
%Use the matrix flip commands.

fprintf("\nQuestion 3: \n");
A = [1 2 3; 4 5 6; 7 8 9]
B = flipud(A)
C = fliplr(A)
D = rot90(A)

%Question 4
%Generate 15 cubes using colon and dot operators

fprintf("\nQuestion 4: \n");

A = (1:15);
B = A .^3;
B = B'