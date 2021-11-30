%Juan Silva

clear, clc, close all
format short, format compact

%Question 8
I  = imread('cameraman.tiff');

imwrite(I, 'cameraman.jpeg');
imwrite(I, 'cameraman.png');
imwrite(I, 'cameraman.gif');