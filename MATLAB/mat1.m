I=imread('pic1.pgm');
I(1:512, 1:512);
[row col]=size(I);
row
col
for i=1:row
    for j=1:col
        J(i,j)=255-I(i,j);
    end
end
imwrite(J, 'negative.pgm');
figure(1), imshow(J);
figure(2), imshow(I);