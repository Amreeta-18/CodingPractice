I=imread('Lenna.png');
I=rgb2gray(I);
[row col]=size(I);
J=zeros(size(I));
K=zeros(size(I));
T=zeros(size(I));
L=zeros(size(I));
figure(1), imshow(I);

    for i=1:row-4
      for j=1:col-4
          r1=(double(I(i, j))+ 4*double(I(i, j+1)) + 7*double(I(i, j+2))+ 4*double(I(i, j+3))+ double(I(i, j+4)));
          r2=(4*double(I(i+1,j))+16*double(I(i+1,j+1))+26*double(I(i+1,j+2))+(16*double(I(i+1,j+3)))+(4*double(I(i+1, j+4))));
          r3=(7*double(I(i+2,j))+26*double(I(i+2,j+1))+41*double(I(i+2,j+2))+26*double(I(i+2,j+3))+7*double(I(i+2, j+4)));
          r4=(4*double(I(i+3,j))+16*double(I(i+3,j+1))+26*double(I(i+3,j+2))+16*double(I(i+3,j+3))+4*double(I(i+3, j+4)));
          r5=(double(I(i+4,j))+4*double(I(i+4,j+1))+7*double(I(i+4,j+2))+4*double(I(i+4,j+3))+double(I(i+4, j+4)));
            rx=(r1+r2+r3+r4+r5)/273;
          J(i+2,j+2)=rx;
      end
    end
imwrite(J, 'c4.pgm');
figure(2),imshow(uint8(J));

for i=1:row-2
    for j=1:col-2
          rx=(double(J(i+2, j)) + double(J(i+2, j+1)) + double(J(i+2, j+2)) - double(J(i, j)) - double(J(i, j+1)) - double(J(i, j+2)));
          ry=(double(J(i,j+2)) +  2*double(J(i+1, j+2)) + double(J(i+2, j+2)) - double(J(i, j)) - 2*double(J(i+1, j)) - double(J(i+2, j)));
          R=sqrt(double(rx*rx)+ double(ry*ry));
          K(i+1,j+1)=R;
          T(i+1,j+1)=atan(double(ry)/double(rx));
     end
end
K=uint8(K);
figure(3),imshow(uint8(K));

 
%thinning
for i=1:row
    for j=1:col
         if (T(i,j)<(+0.3925) && T(i,j)>(-0.3925))
             T(i,j)=0;
         end
           if ((T(i,j)<(+1.1775) && T(i,j)>(+0.3925))||(T(i,j)>(-7.1775) && T(i,j)<(-0.3925)))
             T(i,j)=1;
           end
                      if ((T(i,j)<(+1.5708) && T(i,j)>(+1.1775))||(T(i,j)>(-1.5708) && T(i,j)<(-1.1775)))
             T(i,j)=2;
                      end
     end
end

for i=1:row-2
    for j=1:col-2
        if(T(i+1,j+1)==0) 
            if(K(i+1,j+1)<=K(i+1,j) && K(i+1,j+1)<=K(i+1,j+2))
            K(i+1,j+1)=0;
            end
        end
         if(T(i+1,j+1)==1) 
            if(K(i+1,j+1)<=K(i,j) && K(i+1,j+1)<=K(i+2,j+2))
            K(i+1,j+1)=0;
            end
         end
         if(T(i+1,j+1)==2) 
            if(K(i+1,j+1)<=K(i,j+1) && K(i+1,j+1)<=K(i+2,j+1))
            K(i+1,j+1)=0;
            end
        end
     end
end

figure(4),imshow(uint8(K));

%thresholding
for i=1:row
    for j=1:col,
         if (K(i,j)==(0.28*255) || K(i,j)<(0.28*255))
             K(i,j)=0;
         end
          if (K(i,j)>(0.28*255))
             K(i,j)=255;
         end
     end
end
figure(5),imshow(uint8(K));

BW=edge(I,'Canny');
figure(6),imshow(BW);