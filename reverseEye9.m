myFilter4 = 1/9*fliplr(eye(9));

myOrigImage = rgb2gray(imread("E:assets\flower.png"));

figure; imshow(myOrigImage);

myFilteredImage4 = imfilter(double(myOrigImage),myFilter4);

figure; imshow(myFilteredImage4,[]);