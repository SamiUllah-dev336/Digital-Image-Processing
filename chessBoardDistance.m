A=zeros(100,100);
[row column]=size(A);
Cx=50;
Cy=50;
radius=25;

for i=1:1:row
    for j=1:1:column
        distance=max(abs(Cx-i),abs(Cy-j));
        if(distance<=radius)
            A(i,j)=255;
        end
    end
end

figure:imshow(A)
