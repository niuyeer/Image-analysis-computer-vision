clear all;
close all;
clc;

%img= imread('Test_image1.jpg');
img= imread('2.jpeg');
img= rgb2gray(img);
imshow(mat2gray(img));
out=my_scanner(img);
figure
imshow(uint8(out));