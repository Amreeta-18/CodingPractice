I=imread('lena1.pgm');
[row col]=size(I);

imData=reshape(I, [], 1);
imData=double(imData);
[IDX nn]=kmeans(imData,4);
imIDX=reshape(IDX,size(I));

figure
 imshow(imIDX,[]),title('index');
 
 figure,
 subplot(3,2,1), imshow(imIDX==1, []);
  subplot(3,2,2), imshow(imIDX==2, []);
 subplot(3,2,3), imshow(imIDX==3, []);
  subplot(3,2,4), imshow(imIDX==4, []);
 