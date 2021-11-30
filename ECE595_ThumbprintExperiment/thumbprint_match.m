clear, clc, close all
format short, format compact

%open the original image
fp = imread('fp1.JPG');
fp2 = imread('fp2.JPG');

%complements the image (for non BW images)
fp = imcomplement(fp);
fp2 = imcomplement(fp2);

%convert to grayscale
test = rgb2gray(fp);
test2 = rgb2gray(fp2);

%convert to binary
bw = imbinarize(test);
bw2 = imbinarize(test2);

%apply thinning 
thin_bw = bwmorph(bw, 'thin', 'inf');
thin_bw2 = bwmorph(bw2,'thin','inf');

%convert from logical to double
thin_bw3 = double(thin_bw);
thin_bw4 = double(thin_bw2);

%apply cross-correlation (requires double)
R = xcorr2(thin_bw3, thin_bw4);

%Graph setup
[x y] = max(R(:));

%Plot the correaltion function
plot(R(:))
title('Cross-Correlation');
hold on
plot(y, x, 'or')  %Wait until correlation plot complete
hold off          %plot a red circle to label maximum peak
text(y * 1.05, x, 'Maximum');

%Display the two inputs before and after image processing
figure
subplot(3,2,1), imshow(test);
subplot(3,2,3), imshow(bw);
subplot(3,2,5), imshow(thin_bw);
subplot(3,2,2), imshow(test2);
subplot(3,2,4), imshow(bw2);
subplot(3,2,6), imshow(thin_bw2);