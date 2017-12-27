function updateEnergyPreview () 
  global EnergyDisp;
  global EnergyFcn;
  global EnergyPreview;
  global input;
  global energy;
  
  toDisp = rgb2gray(im2double(input));
  if (strcmp(EnergyFcn, 'Gradient'))
        energy = imgradient(toDisp, 'sobel');
  else
        energy = imgradient(toDisp, 'sobel');
  end
    
  if (strcmp(EnergyFcn, 'HoG'))
    
  else
    imagesc(EnergyPreview, energy);
  end
end