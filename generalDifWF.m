A=rgb2gray(imread("C:\Users\Gujjar\Pictures\linux.jpg"));

[R C]=size(A);  % get the size of A and store it r and c
figure;imshow(A);

myfilter=[1 2 3 3 1;4 5 6 2 9;7 8 9 3 4;10 11 12 7 0;22 16 13 14 15];

%flipped each column elements, means horizontally flipped
horizontalF=flip(myfilter,1);

%flipped each rows elements, means vertically flipped
verticalF=uint8(flip(horizontalF,2));

%find out a length of matrix to take average,
k=length(verticalF);
filterDiv=k*k;

init=round(k/2);
termint=(round(k/2)-1);
B=zeros(R,C);

for i=init:1:R-termint
    for j=init:1:C-termint
        myN=A(i-termint:i+termint,j-termint:j+termint).*verticalF;
        myNR=reshape(myN,1,[]);
        myNRS=sum(myNR);
        myValue=myNRS/filterDiv;
        B(i,j)=myValue;
    end
end

figure;imshow(B);