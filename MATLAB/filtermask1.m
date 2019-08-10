I=imread('coins.pgm');
[row col]=size(I);
J=double(I);
K=double(I);
L=double(I);
M=double(I);
for i=1:row-2
    for j=1:col-2
           J(i:i+2,j:j+2);
          R=(double(I(i, j+1)) + double(I(i+1, j)) + double(I(i+1, j+2)) + double(I(i+2, j+1))-4*double(I(i+1, j+1)));
         J(i+1, j+1)=R;
    end
end
  J=uint8(J);
 imwrite(J, 'coins_f1.pgm');
figure(1), imshow(I);
figure(2), imshow(J);


  for i=1:row-2
   for j=1:col-2     
       %K(i:i+2,j:j+2)
         R=(double(I(i,j)) + double(I(i, j+1)) + double(I(i, j+2)) + double(I(i+1, j)) + double(I(i+1, j+2)) + double(I(i+2, j))+ double(I(i+2, j+1)) + double(I(i+2, j+2))-8*double(I(i+1, j+1)));
         K(i+1, j+1)=R;
        % R
     end
  end
      K=uint8(K);
          imwrite(K, 'coins_f2.pgm');

figure(3), imshow(K);

     for i=1:row-2
    for j=1:col-2
          R=(4*double(I(i+1, j+1))-double(I(i, j+1)) - double(I(i+1, j)) - double(I(i+1, j+2)) - double(I(i+2, j+1)));
          L(i+1, j+1)=R;
    end
     end
     L=uint8(L);
     imwrite(L, 'coins_f3.pgm');
figure(4), imshow(L);

for i=1:row-2
    for j=1:col-2
          R=(8*double(I(i+1, j+1))- double(I(i,j)) - double(I(i, j+1)) - double(I(i, j+2)) - double(I(i+1, j)) - double(I(i+1, j+2)) - double(I(i+2, j))- double(I(i+2, j+1)) - double(I(i+2, j+2)));
          M(i+1, j+1)=R;
    end
end
 M=uint8(M);
imwrite(M, 'coins_f4.pgm');
figure(5), imshow(M); 


    