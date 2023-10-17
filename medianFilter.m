A=imread('E:\Matlab\assets\salt_papper_noise.png');
disp(class(A));

[R C]=size(A);  % get the size of A and store it r and c
figure;imshow(A);
% input filter as
k=3
init=round(k/2);
termint=(round(k/2)-1);

B=zeros(R,C);
for i=init:1:R-termint
    for j=init:1:C-termint
        myN=A(i-termint:i+termint,j-termint:j+termint);
        maxValue=median(myN(:));
        B(i,j)=maxValue;
    end
end
figure;imshow(uint8(B));