function updateEnergyPreview ()
global EnergyDisp;
global EnergyPreview;
global Energy;
global EnergyFlow;

if (strcmp(EnergyDisp, 'Energy'))
	imageShow(EnergyPreview, Energy);
else
	imageShow(EnergyPreview, EnergyFlow);	
end

end