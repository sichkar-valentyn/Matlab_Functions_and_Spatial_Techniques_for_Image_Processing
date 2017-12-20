% File: Spatial_techniques.m
% Description: Using MATLAB functions, implement Spatial techniques for image processing
% Environment: Matlab
%
% MIT License
% Copyright (c) 2017 Valentyn N Sichkar
% github.com/sichkar-valentyn
%
% Reference to:
% [1] Valentyn N Sichkar. Spatial techniques for image processing in Matlab // GitHub platform [Electronic resource]. URL: https://github.com/sichkar-valentyn/Matlab_Functions_and_Spatial_Techniques_for_Image_Processing (date of access: XX.XX.XXXX)

close all;
 
%Dividing an Image by a Constant Factor y = x/2
i = imread('blurry_moon_1.tif');
j = imdivide(i, 2);
figure;
subplot(3,2,1), imshow(i);
subplot(3,2,2), imshow(j);
 
%Enhancing contrast using histogram equalization
h = histeq(i);
subplot(3,2,3), imshow(i);
subplot(3,2,4), imshow(h);
 
%Getting histogram of image data
subplot(3,2,5), imhist(i, 64);
subplot(3,2,6), imhist(h, 64);
 
%Showing Adjust Contrast tool for the image
figure;
imshow(i);
imcontrast
 
%Complementing the image
figure;
c = imcomplement(i);
subplot(1,2,1), imshow(i);
subplot(1,2,2), imshow(c);
 
%Adjusting image intensity values using gamma
figure;
d = imadjust(i, [26.0/255, 102.0/255], [0,1], 1.5);
subplot(1,2,1), imshow(i);
subplot(1,2,2), imshow(d);
