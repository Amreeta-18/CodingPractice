I=imread('coins.pgm');
[row col]=size(I);
J=zeros(size(I));

for i=1:row-2
    for j=1:col-2
          rx=(double(I(i+2, j)) + 2*double(I(i+2, j+1)) + double(I(i+2, j+2)) - double(I(i, j)) - 2*double(I(i, j+1)) - double(I(i, j+2)));
          ry=(double(I(i,j+2)) +  2*double(I(i+1, j+2)) + double(I(i+2, j+2)) - double(I(i, j)) - 2*double(I(i+1, j)) - double(I(i+2, j)));
          R=sqrt(double(rx*rx)+ double(ry*ry));
          J(i+1,j+1)=R;
     end
 end
 
imwrite(J, 'c3.pgm');
figure(4), imshow(uint8(J));

 


    