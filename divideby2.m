A=imread('C:\Users\Gujjar\Pictures\linux.jpg');
class(A)
[row col]=size(A);
figure:imshow(A);
for i=1:1:row
    for j=1:1:col
        A(i,j)=A(i,j)+10;
    end        
end

figure:imshow(A);