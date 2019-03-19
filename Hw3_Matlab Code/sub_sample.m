function  [Sub_image]=sub_sample(img,msize)

%%%blur
H= fspecial('gaussian',[msize msize],0.1); %%%sigma=2
r=img(:,:,1);  
g=img(:,:,2); 
b=img(:,:,3); 
r_filtered=imfilter(r,H,'circular');
g_filtered=imfilter(g,H,'circular'); 
b_filtered=imfilter(b,H,'circular'); 

%B=cat(3,r_filtered,g_filtered,b_filtered); 


Sub_image = cat(3,imresize(r_filtered,0.5),imresize(g_filtered,0.5),imresize(b_filtered,0.5)); 


end