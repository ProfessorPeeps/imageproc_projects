clear, clc, close all
format short, format compact

%===|Question 5|====%

im = imread('Porsche.tiff');

p = input('Enter value for p: ');

%Generates noise based on value of p
out = xor(im, rand(size(im)) < p / 100);

imshow(out);