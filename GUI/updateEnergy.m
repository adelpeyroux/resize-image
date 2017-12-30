function updateEnergy ()
global EnergyFcn;
global input;
global Energy;
global EnergyFlow;

toDisp = rgb2gray(im2double(input));

if (~is_octave)
  Energy = imgradient(toDisp, EnergyFcn);
else
  if (strcmp(EnergyFcn, 'central') | strcmp(EnergyFcn, 'intermediate'))
    Energy = imgradient(toDisp, strcat([EnergyFcn, 'difference']));
  else
    Energy = imgradient(toDisp, EnergyFcn);
  end

end

EnergyFlow = Error_Flow(Energy);
updateEnergyPreview();

end