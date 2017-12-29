function updateEnergy ()
global EnergyFcn;
global input;
global Energy;
global EnergyFlow;

1

toDisp = rgb2gray(im2double(input));
if (strcmp(EnergyFcn, 'Gradient'))
	Energy = imgradient(toDisp, 'sobel');
elseif (strcmp(EnergyFcn, 'HoG'))
  2
  Energy = HoGError(toDisp, 3);
else
	Energy = imgradient(toDisp, 'sobel');
end

EnergyFlow = Error_Flow(Energy);

updateEnergyPreview();
end