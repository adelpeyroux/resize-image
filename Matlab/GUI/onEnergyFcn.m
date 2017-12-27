function onEnergyFcn(source, event)
global EnergyFcn;
EnergyFcn = get(event.NewValue, 'string');
updateEnergy();
end