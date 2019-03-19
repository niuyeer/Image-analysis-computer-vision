function  [Out]=myCompositor(In1,In2,npyramids,msize)
[r1,c1,d1]=size(In1);
% [r2,c2,d2]=size(In2);
% figure
% imshow(In1)


%%% Laplacian Pyramids
% g_0=G(In1,0,msize);%G0

% for i=1:pyramids
% [r,c,d]=size(g_0) 
% g_1=G(In1,i,msize);%%%%G
% f=expand(G(In1,i,msize),r,c);
% L=g_0-f;%%+128
% figure
% imshow(L)
% g_0=g_1;
% end


%% reconstructed image
%  g5=L(In1,In2,5,msize,npyramids);
%  figure
%  imshow(g5);
% 
% 
%  g5=L(In1,In2,5,msize,npyramids);
%  figure
%  imshow(g5);
%  size(g5)
%  
% 
%  g5=L(In1,In2,4,msize,npyramids);
%  figure
%  imshow(g5);
%   size(g5)
%   
%  g5=L(In1,2,msize,npyramids);
%  figure
%  imshow(g5);
%  g5=L(In1,1,msize,npyramids);
%  figure
%  imshow(g5);


g_end=L(In1,In2,npyramids+1,msize,npyramids);
% figure 
% imshow(g_end)
for i=npyramids:-1:1
g_next= L(In1,In2,i,msize,npyramids);
[r,c,d]=size(g_next);
g_end=expand(g_end,r,c)+g_next;
% figure 
% imshow(g_end)
end

Out=g_end;
end