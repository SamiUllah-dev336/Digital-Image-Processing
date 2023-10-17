function MySecondAssignment(filename,n)

    % check mask size is less than 3, exit from function
    if n<3
        disp("mask size be equal and greater than 3")
        return;
    end

    %reading image and convert it into gray scale   
    originalImg=rgb2gray(imread(filename));

    %add salt and papper noise on image
    noiseDensity=0.02;
    noisyImage = imnoise(originalImg, 'salt & pepper', noiseDensity);

    %display orignal and noisy image
    figure;imshow(originalImg);
    figure;imshow(noisyImage);
    
    % get the size of noisy image and store it R and C
    [R C]=size(noisyImage); 
    
    % *********It is a box generalized averaging filter********

    % check condition and create a filter using user input
    %  define initial and termination condition
    %  initial: for 3*3 it is started from (2,2) and 5*5 (3,3) and so on
    %  termination: define a termination condition of filter for 3*3 R-2
    %  and C-2

    mask=n*n;
    initial=round(n/2);
    termintion=(round(n/2)-1);

    % create image with size of original image
    denoisedimage_averaging=zeros(R,C);

    for i=initial:1:R-termintion
        for j=initial:1:C-termintion
            % here termintion is used to choose filter size image
            myN=noisyImage(i-termintion:i+termintion,j-termintion:j+termintion);
            
            % it is used to convert 2d matrix to 1d using reshape
            myNR=reshape(myN,1,[]);
            
            %calculate sum of all value
            myNRS=sum(myNR);
            
            % then sum divide by 5*5,7*7 etc.
            myValue=myNRS/mask;

            % Here set value on a new image 
            denoisedimage_averaging(i,j)=myValue;
        end
    end

    %***************Median Filter*********************
    % create image with size of original image
    denoisedimage_median=zeros(R,C);

    for i=initial:1:R-termintion
        for j=initial:1:C-termintion

            myN=noisyImage(i-termintion:i+termintion,j-termintion:j+termintion);
           
            % this function is used to calculate median
            med=median(myN(:));
            
            % Here set value on a new image 
            denoisedimage_median(i,j)=med;
        end
    end
    
    % display averaging and median filter apply images
    figure;imshow(denoisedimage_averaging,[]);
    figure;imshow(denoisedimage_median,[]);

    % save files in current directory as bmp and jpeg format
    path="E:\samiullah_sp21-bcs-088_assign2\assets\denoisedimage_averaging.bmp";
    imwrite(uint8(denoisedimage_averaging),path);

    path="E:\samiullah_sp21-bcs-088_assign2\assets\denoisedimage_median.jpeg";
    imwrite(uint8(denoisedimage_median),path);

end










