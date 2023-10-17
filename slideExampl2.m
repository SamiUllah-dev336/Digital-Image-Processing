myFilter2 = [0 0 0; 0 1 0; 0 0 0];

myOrigImage = rgb2gray(imread("E:assets\flower.png"));

figure; imshow(myOrigImage);

myFilteredImage2 = imfilter(double(myOrigImage),myFilter2);

figure; imshow(myFilteredImage2,[]);