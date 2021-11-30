clear, clc, close all
format short, format compact

K = 255;
x = -5:0.1:5;
y = -5:0.1:5;

y0 = 0;
x0 = 0.01;

z = K .* exp(-(((x-x0).^2)+((y-y0).^2)));

plot(z)
