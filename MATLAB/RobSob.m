I=imread('lena2.pgm');
[row col]=size(I);
J=zeros(size(I));
K=zeros(size(I));
T=zeros(size(I));
figure(1), imshow(I);

    for i=1:row-2
      for j=1:col-2
          rx=(double(I(i+2, j+2))-double(I(i+1, j+1)));
          ry=(double(I(i+2, j+1))-double(I(i+1, j+2)));
          R=sqrt((rx*rx)+(ry*ry));
          J(i+1,j+1)=R;
     end
    end
    
imwrite(J, 'c4.pgm');
 figure(4), imshow(uint8(J));

 for i=1:row-2
    for j=1:col-2
          rx=(double(I(i+2, j)) + 2*double(I(i+2, j+1)) + double(I(i+2, j+2)) - double(I(i, j)) - 2*double(I(i, j+1)) - double(I(i, j+2)));
          ry=(double(I(i,j+2)) +  2*double(I(i+1, j+2)) + double(I(i+2, j+2)) - double(I(i, j)) - 2*double(I(i+1, j)) - double(I(i+2, j)));
          R=sqrt(double(rx*rx)+ double(ry*ry));
          K(i+1,j+1)=R;
     end
 end
 
imwrite(K, 'c3.pgm');
figure(5), imshow(uint8(K));

 


    
    