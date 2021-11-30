%this function will prompt the user to enter a number
%and determine if the number is a square number.
function [] = issquare(num)

if sqrt(num) == floor(sqrt(num))
   fprintf("%d is a square number.\n", num);
else
   fprintf("%d is not a square number.\n", num);
end