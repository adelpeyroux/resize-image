function initMenu()
  % create figure and panel on it
f = figure('deletefcn', 'clear global; close all;');
% create a button (default style)
% Image panel, contien le boutton pour charger une image et les infos de cette image

in_file = "default.png";

global input = imread(in_file);

hptop = uipanel(f, 'Title','Image','FontSize',12,...
             'Position',[0 .85 1 .15], "Units", 'normalized');

global filetxt = uicontrol(hptop,'Style','text',...
        "Units", 'normalized','Position',[0.27 .5 0.35 0.4],...
        'String',in_file);

global restxt = uicontrol(hptop,'Style','text',...
        "Units", 'normalized','Position',[0.27 .1 0.35 0.4],...
        'String',mat2str(size(input)));
        
global load = uicontrol(hptop, 'Style', 'pushbutton', 'String', 'Load',...
        "Units", 'normalized','Position', [0.05 .1 0.2 0.8],...
        'Callback', @onLoad);

global preview = axes('parent', hptop, "Units", 'normalized', 'position', [0.7 .0 0.30 1]);

image(preview, input);

hpmid = uipanel(f, 'Title','Options','FontSize',12,...
             'Position',[0 .60 1 .25], "Units", 'normalized');
        
hpbot = uipanel(f, 'Title','Result','FontSize',12,...
             'Position',[0 0 1 .60], "Units", 'normalized');    
        
end