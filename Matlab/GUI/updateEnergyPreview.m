function updateEnergyPreview ()
global EnergyDisp;
global EnergyPreview;
global Energy;
global EnergyFlow;

if (strcmp(EnergyDisp, 'Energy'))
	imagesc(EnergyPreview, Energy);
	axis off;
	axis image;
else
	imagesc(EnergyPreview, EnergyFlow);	
	axis off;
	axis image;
end

axis off;
axis image;

end