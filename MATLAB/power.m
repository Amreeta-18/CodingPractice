I=imread('pic1.pgm');
b=1;
c=3;
d=9;
J=(b*(I.^c));
K=(b*(I.^d));
imwrite(J, 'power1.pgm');
imwrite(K, 'power2.pgm');
figure(1), imshow(I);
figure(2), imshow(J);
figure(3), imshow(K);