N = 150;
M = 160;

f=zeros(N,M);	

for i = 1:N
    for j = 1 : M
        if mod(i, 7) == 0 && mod(i, 2) ~= 0
            f(7:140,i:i+7) = 1;
        end      
    end  
end

%Arithmetic mean
% filter = fspecial('average', 9);
% g = imfilter(f,filter);
imshow(f,'InitialMagnification','fit')