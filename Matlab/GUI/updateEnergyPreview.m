function updateEnergyPreview ()
global EnergyDisp;
global EnergyPreview;
global Energy;
global EnergyFlow;

if (strcmp(EnergyDisp, 'Energy'))
	imagesc(EnergyPreview, Energy);
else
	imagesc(EnergyPreview, EnergyFlow);	
end

axis off;
axis image;

end