function  [Rv,row,col]=myHCdetector(I,sigma,k,N)


%%applying sobel edge detector in the horizontal direction
fx = [-1 0 1;-1 0 1;-1 0 1];
Ix = filter2(fx,I);
% applying sobel edge detector in the vertical direction
fy = fx';
Iy = filter2(fy,I); 
Ix2 = Ix.^2;
Iy2 = Iy.^2;
Ixy = Ix.*Iy;
clear Ix;
clear Iy;
%applying gaussian filter on the computed value
h= fspecial('gaussian',[5 5],sigma); %%%sigma=2
Ix2 = filter2(h,Ix2);
Iy2 = filter2(h,Iy2);
Ixy = filter2(h,Ixy);
height = size(I,1);
width = size(I,2);
result = zeros(height,width); 
R = zeros(height,width);
Rmax = 0;
tic
for i = 1:height
for j = 1:width
M = [Ix2(i,j) Ixy(i,j);Ixy(i,j) Iy2(i,j)];
R(i,j) = det(M)-k*(trace(M))^2;%%k=0.01
if R(i,j) > Rmax
Rmax = R(i,j);
end;
end;
end;
toc
cnt = 0;
for i = 2:height-1
for j = 2:width-1
if R(i,j) > 0.1*Rmax && R(i,j) > R(i-1,j-1) && R(i,j) > R(i-1,j) && R(i,j) > R(i-1,j+1) && R(i,j) > R(i,j-1) && R(i,j) > R(i,j+1) && R(i,j) > R(i+1,j-1) && R(i,j) > R(i+1,j) && R(i,j) > R(i+1,j+1)
result(i,j) = R(i,j);

cnt = cnt+1;
end;
end;
end;

[posr, posc,t] = find(result);
cnt ;

buff=table(posr,posc,t);
data=sortrows(buff,'t','descend');
newData=head(data,N)
   
Rv=newData.t;
row=newData.posr;
col=newData.posc;
imshow(I);
hold on;
plot(col,row,'r.');



end

