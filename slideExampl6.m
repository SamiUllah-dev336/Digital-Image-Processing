myFilter6 = zeros (5,5);

myFilter6(1:2,3) = -1;

myFilter6(4:5,3) = -1;

myFilter6(3,3) = 4;

myOrigImage = rgb2gray(imread("E:assets\flower.png"));

figure; imshow(myOrigImage);

myFilteredImage6 = imfilter(myOrigImage,myFilter6);

figure; imshow(myFilteredImage6,[]);