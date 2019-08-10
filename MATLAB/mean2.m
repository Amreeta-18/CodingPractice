I=imread('Lenna.pgm');
figure(1), imshow(I);
I=im2double(I);
J=double(zeros(size(I)));

[row col]=size(I);
for i=2:row-2
    for j=2:col-2
      A =I(i-1:i+1,j-1:j+1); 
      A = reshape(A,[],1);
      x=0;
      y=0;
      z=0;
      for k=1:9
          x=x+A(k)*1;
          y=y+A(k)*2;
          z=z+A(k)*1;
      end
      if (x-5)>0.7 
         J(i,j)=1;
      
      elseif (y-10)>0.9 && (y-10)<1.3
          J(i,j)=0.5;
          
      else
          J(i,j)=0;
      end
          
    end
end
figure(2), imshow(J);
