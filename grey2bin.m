A=rgb2gray(imread('C:\Users\Gujjar\Pictures\linux.jpg'));
[row col]=size(A);
% figure:imshow(A);

for i=1:1:row
    for j=1:1:col
        if(A(i,j)<128)
            A(i,j)=0;
        else
            A(i,j)=255;
        end    
    end        
end

figure:imshow(A);