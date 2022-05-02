I=imread('camera.jpg');
thresh = multithresh(I,7);
valuesMax = [thresh max(I(:))];
[quantmax, index] = imquantize(I,thresh,valuesMax);
valuesMin = [min(I(:)) thresh];
quantmin = valuesMin(index);
imshow(quantmax)
