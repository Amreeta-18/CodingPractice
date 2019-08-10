I=imread('lena1.pgm');
[row col]=size(I);
J=I;
for i=1:(row-2)
    for j=1:(col-2)
          I(i:i+2, j:j+2);
          i;
          S = sum(I(i:i+2,j:j+2));
          C = sum(S); 
          C = C/9;
          J(i+1, j+1)=C;
           C;
           I(i+1, j+1);
    end
end
imwrite(J, 'avg1.pgm');
figure(1), imshow(J);
figure(2), imshow(I);
    