clear, clc, close all
format short, format compact

%===|Question 2|====%

%Generate an image composed of two circles
%Inner circle has a radius of 50 pixels with mean of 192
%Outer circle has a radius of 100 pixels with mean of 64

%Circle Radius
R1 = 100;       %inner circle
R2 = 50;        %outer circle

%Image array
N = 400;
I = 64*(ones(N,N));

%generate
for row = I : N
    for col = 1 : N
        if(row - N/2)^2 + (col - N/2)^2 < R2^2
            I(row,col) = 192;
        elseif(row - N/2)^2 + (col - N/2)^2 < R1^2
            I(row,col) = 128;
        end
    end
end

%Generate noise: r = a + (b-a).*rand(100,1)  
I = I + (16 - (-16)) * (rand(N) - 0.5);
imshow(I, [0 255]);

%Write to a file
imwrite(uint8(I), 'circles.tif');