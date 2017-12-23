function result = HoGfeature (image)

addpath('./HOG/');

grim = rgb2gray(image); % grim like GRay IMage

result = findBlocksHOG(grim, 1, 11, 8, 'matrix', );

end