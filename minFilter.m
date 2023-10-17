A=imread('E:\Matlab\assets\salt_noise.png');

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
        miniValue=min(myN(:));
        B(i,j)=miniValue;
    end
end
figure;imshow(uint8(B));