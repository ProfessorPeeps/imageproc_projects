% Juan Silva
% Aug. 31, 2019
% ECE 595
% Exercise 4.6

clear, clc, close all
format short, format compact

% 1. Liz buys three apples, a dozen bananas, and one cantaloupe for $2.36. 
% Bob buys a dozen apples and two cantaloupe for $5.26. Carol buys two 
% bananas and three cantaloupe for $2.77. How much do single pieces of 
% each fruit cost?

A = [3 12 0; 12 0 2; 1 2 3];
b = [2.36; 5.26; 2.77];
X = inv(A) * b;

fprintf(" Apple = $%.2f \n Banana = $%.2f \n Cantaloupe = $%.2f\n", X(1),X(2), X(3));