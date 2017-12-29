function error = HoGError (image)
  tic;
  [hog Ix Iy] = hog_feature_vector(image, 5);
  toc
  error = imgradient(image, 'sobel');
  hs = round(5/2);
  hoghog = reshape (hog, [size(image, 1) - 2 * hs + 1, size(image, 2) - 2 * hs + 1, 9]);
  
  for i = hs: rows - hs
    for j= hs: cols - hs
      
      hist =  hoghog(i - hs, j-hs, :);
      error(i,j) = (abs(Ix(i,j)) + abs(Iy(i,j))) / max(hist);
    end      
  end
end