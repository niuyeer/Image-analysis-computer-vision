function  [L_image]=L(In1,In2,num,msize,npyramids)


g_0=In1;
g_00=In2;
if num<=npyramids
    for i=1:num
    [r,c,d]=size(g_0);
    g_1=G(In1,i,msize);%%%%G
    g_10=G(In2,i,msize);
    f=expand(G(In1,i,msize),r,c);
    f0=expand(G(In2,i,msize),r,c);
    L_im=g_0-f;
    L_im0=g_00-f0;
    g_0=g_1;
    g_00=g_10;
% figure
% imshow(L_image)
    end
else
    L_im=G(In1,npyramids,msize);
    L_im0=G(In2,npyramids,msize);
end
% figure 
% imshow(L_im)
% figure 
% imshow(L_im0)
[r1,c1,d1]=size(L_im);

L_image=zeros(r1,c1,d1);
L_image=uint8(L_image);
for i=1:fix(c1/2)
 L_image(:,i,:)=L_im(:,i,:);
% end
% figure 
% imshow(L_image)

for i=(1+fix(c1/2)):c1
 L_image(:,i,:)=L_im0(:,i,:);
end

% figure 
% imshow(L_image)
% figure 
% imshow(L_im0)
end