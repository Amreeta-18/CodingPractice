I=imread('Lenna.png');
figure(1), imshow(I);
I=im2double(I);
J=double(zeros(size(I)));
K=imread('Lenna.pgm');

figure(2), imshow(K);
for i=2:row-2
    for j=2:col-2
      A =I(i-1:i+1,j-1:j+1); 
      A = reshape(A,[],1);
      B = K(i-1:i+1,j-1:j+1); 
      B = reshape(B,[],1);
              net=feedforwardnet(10);
              net = configure(net,A,B);
y1 = net(A);
plot(A,B,'o',A,y1,'x');
              
    end
      end
