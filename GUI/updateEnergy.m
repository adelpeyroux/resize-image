function updateEnergy ()
global EnergyFcn;
global input;
global Energy;
global EnergyFlow;

toDisp = rgb2gray(im2double(input));
if (strcmp(EnergyFcn, 'Gradient'))
	Energy = imgradient(toDisp, 'sobel');
elseif (strcmp(EnergyFcn, 'HoG'))
	Energy = imgradient(toDisp, 'sobel');
else
	Energy = imgradient(toDisp, 'sobel');
end

EnergyFlow = Error_Flow(Energy);

updateEnergyPreview();
end