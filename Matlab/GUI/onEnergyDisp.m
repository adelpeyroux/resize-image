function onEnergyDisp(source, event)
global EnergyDisp;
EnergyDisp = get(event.NewValue, 'string');
updateEnergyPreview();
end