clear, clc, close all
format short, format compact

%===|Question 1|====%

%(a)
%Open image & create imate
porsche = imread('Porsche.tiff');
subplot(3, 2, 1); title('No Filter');
imshow(porsche);

%Apply smoothing filter
temp1 = fspecial('average', [3 3]);
smooth = imfilter(porsche, temp1, 'replicate');
subplot(3, 2, 2); title('Smoothing Filter');
imshow(smooth);

%(b)
%Apply median filter
median = medfilt2(porsche, [3 3]);
subplot(3, 2, 3); title('Median Filter');
imshow(median);

%(c)
%Unsharp masking with 3x3 linear filter (k = 1.75)
k = 1.75;

%mask = orignal - filter
%unsharp = original + k * mask
linear_mask = porsche - smooth;
unsharp1 = porsche + k * linear_mask;
subplot(3, 2, 4); title('Unsharp, Linear, k = 1.75');
imshow(unsharp1);

%(d)
%Unsharp masking with 3x3 median filter (k = 1.75)

%mask = orignal - filter
%unsharp = original + k * mask
median_mask = porsche - median;
unsharp2 = porsche + k * median_mask;
subplot(3, 2, 5); title('Unsharp, Median, k = 1.75');
imshow(unsharp1);