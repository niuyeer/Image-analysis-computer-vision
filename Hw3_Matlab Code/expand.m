function  [expand_image]=expand(img,row,col)

r=img(:,:,1);  
g=img(:,:,2); 
b=img(:,:,3); 
 
expand_image=cat(3,imresize(r,[row,col]),imresize(g,[row,col]),imresize(b,[row,col])); 
% figure
% imshow(expand_image);
end