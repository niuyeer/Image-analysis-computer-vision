clear all;
clc;
I = imread('peppers.png'); 
if length(size(I))>2
I = rgb2gray(I);
end 
I=I;
k=0.01; sigma=2; N=5;
[R,row,col]=myHCdetector(I,sigma,k,N)