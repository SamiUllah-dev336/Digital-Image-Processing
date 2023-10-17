A=rgb2gray(imread("E:assets\stars.png"));
[R C]=size(A);  % get the size of A and store it r and c
figure;imshow(A);

% Blurred image by different filters
k=5
filter=k*k;
init=round(k/2);
termint=(round(k/2)-1);

B=zeros(R,C);

for i=init:1:R-termint
    for j=init:1:C-termint
        myN=A(i-termint:i+termint,j-termint:j+termint);
        myNR=reshape(myN,1,[]);
        myNRS=sum(myNR);
        myValue=myNRS/filter;
        B(i,j)=myValue;
    end
end

figure;imshow(B,[]);

%Image thresholding

C=uint8(B);
[row col]=size(C);

for i=1:1:row
    for j=1:1:col
        if(C(i,j)>128)
            C(i,j)=255;
        else
            C(i,j)=0;
        end    
    end        
end

figure;imshow(C);

% add image thresholding values back to original image
[row col]=size(C);

for i=1:1:row
    for j=1:1:col
        if(C(i,j)==255)
            C(i,j)=A(i,j);
        end    
    end        
end
% Sharpened Image
figure;imshow(C);


