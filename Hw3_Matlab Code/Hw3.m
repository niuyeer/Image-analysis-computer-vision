clc;
clear all;
%%%% For the apple.jpg and orange.jpg

npyramids=4;

%global msize
 msize =5;
%Output = a-o.jpg 
%global In1
In1=imread('apple.jpg');

In2=imread('orange.jpg');
%In2=rgb2gray(In2);
[Out]=myCompositor(In1,In2,npyramids,msize);

% figure
% imshow(In1)
% figure
% imshow(In2)
figure
imshow(Out);

