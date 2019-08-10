I=imread('lena1.pgm');
L=256;
[row col]=size(I);
K = log(double(I)+1);
imwrite(K, 'log.pgm');
figure(1), imshow(I);
figure(2), imshow(uint8(K));