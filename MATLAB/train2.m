I=imread('Lenna.png');
I=rgb2gray(I);
I=mat2gray(I);
L=I;
W1=rand(18,1);
W2=rand(5,1);
K=zeros(size(L));
figure(1), imshow(I);
figure(2), imshow(L);
[row col]=size(L);
for i=2:400 %row-2
    for j=2:400 %col-2
      A =I(i-1:i+1,j-1:j+1); 
      A = reshape(A,[],1);
      %middle element = b
      b = L(i,j); 
      H=zeros(1,2);
      %hidden layer
        for k=1:2
            for l=1:9
                H(k)=H(k)+A(l)*W1(l);
            end
            H(k)=1/(1+exp(1)^(-H(k)));
        end
        %output layer
        O=0;
            for l=1:2
                O=O+H(l)*W2(l);
            end
            O=1/(1+exp(1)^(-O));
        %checking error
        E=0.5*((b-O)^2);
             while (E>0.05)
            %adjusting weights from hidden layer
        
          for l=1:2
                x =(O-b)*(O*(1-O))*H(l);
              W2(l)=W2(l)-(0.8*x);
          end
          for l=1:2
              for k=1:9              
             y =((O-b)*(O*(1-O)))*W2(l)*(H(l)*(1-H(l)))*A(k);
             W1(k)=W1(k)-0.8*y;
              end
          end
                H=zeros(1,2);
                  for k=1:2
            for l=1:9
                H(k)=H(k)+A(l)*W1(l);
            end
            H(k)=1/(1+exp(1)^(-H(k)));
                  end
           O=0;
           for l=1:2
                O=O+H(l)*W2(l);
            end
           O=1/(1+exp(1)^(-O));
             E=0.5*((b-O)^2);
             E
        end   
         K(i,j)=O;
end
end
 figure(3), imshow(K);

    
      
