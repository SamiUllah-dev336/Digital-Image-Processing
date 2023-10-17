A=imread('C:\Users\Gujjar\Pictures\linux.jpg');
[row col]=size(A);

for i=1:1:row
    for j=1:1:col
        A(i,j)=255-A(i,j);
    end        
end

figure:imshow(A);