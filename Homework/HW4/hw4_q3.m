clear, clc, close all
format short, format compact

%===|Question 3|====%

%Read image
cameraman = imread('cameraman.tiff');
[M1,N1] = size(cameraman);

%Assign new size
M2 = 400;
N2 = 400;
resize = zeros(M2,N2);

%Determine ratios
x1 = (N2 / N1);
y1 = (M2 / M1);

%
for y = 1 : M2
    for x = 1 : N2
        %find single pixel on original image
        v = x / x1;
        w = y / y1;
        
        %have to round to find lowest values
        low_v = floor(v);
        low_w = floor(w);
        
        %Ensures not out of bounds
        if low_v < 1 
            low_v = 1;
        end
        
        if low_w < 1 
            low_w = 1;
        end
                
        if low_v > N1 - 1 
            low_v = N1 - 1;
        end
        
        if low_w > M1 - 1 
            low_w = M1 - 1;
        end
        
        %offset from center
        x0 = v - low_v;
        y0 = w - low_w;
        
%Bilinear Interpolation
resize(x,y) = cameraman(low_w, low_v) * (1 - x0) * (1-y0) + ...
              cameraman(low_w, low_v + 1) * x0 * (1 - y0) + ... 
              cameraman(low_w + 1, low_v) * (1 - x0) * y0 + ...
              cameraman(low_w + 1, low_v + 1) * x0 * y0;
    end
end

imshow(resize, []);