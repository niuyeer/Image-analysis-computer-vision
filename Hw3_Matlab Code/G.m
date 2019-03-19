function  [G_image]=G(In1,num,msize)
img=In1;
for i=1:num
img=sub_sample(img,msize);

end
G_image=img;
% figure
% imshow(G_image)
end