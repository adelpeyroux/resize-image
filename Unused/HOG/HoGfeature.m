function result = HoGfeature (image)

grim = rgb2gray(image); % grim like GRay IMage

result = findBlocksHOG(grim, 1, 8, 9, 'matrix', 'showWindow');

end