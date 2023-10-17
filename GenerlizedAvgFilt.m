A=double(rgb2gray(imread("E:\Matlab\samiullah_sp21-bcs-088_assign2\assets\darkImage.jpeg")));

[R C]=size(A);  % get the size of A and store it r and c
figure;imshow(A,[]);
% input filter as
k=5
filter=(k*k);
myfilter=[1/filter 1/filter 1/filter;
          1/filter 1/filter 1/filter;
          1/filter 1/filter 1/filter]

init=round(k/2);
termint=(round(k/2)-1);

B=zeros(R,C);
for i=init:1:R-termint
    for j=init:1:C-termint
        myN=A(i-termint:i+termint,j-termint:j+termint).*myfilter;
        myNR=reshape(myN,1,[]);
        myNRS=sum(myNR);
        B(i,j)=myNRS;
    end
end

figure;imshow(B,[]);