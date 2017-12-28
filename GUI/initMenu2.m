function initMenu2()
% create figure and panel on it
f = figure(	'deletefcn', 'clear global; close all;', 'Name', 'Resizer',...
	'units','normalized','position',[0 0 1 1]);
% create a button (default style)
% Image panel, contien le boutton pour charger une image et les infos de cette image

global filename;
global input;
global inputSize;

%% TOP PANEL
hptop = uipanel(f, 'Title','Image','FontSize',12,...
	'Position',[0.0 0.76 0.5 0.23], 'Units', 'normalized');

% LOAD BUTTON
uicontrol(hptop, 'Style', 'pushbutton', 'String', 'Load',...
	'Units', 'normalized','Position', [0.01 0.6 0.23 0.2],...
	'Callback', @onLoad);

% FILE NAME
uicontrol(hptop,'Style','text','Units', 'normalized',...
	'Position',[0.01 0.2 0.23 0.3],...
	'String',sprintf('%s\nDimension : %s ',filename, mat2str(inputSize)));

% IMAGE PREVIEW
global preview;
preview = axes('parent', hptop, 'position', [0.26 0.01 0.73 0.99]);
imageShow(preview, input);

%% MID PANEL
hpmid = uipanel(f, 'Title','Energy','FontSize',12,...
	'Position',[0.5 0.76 0.5 0.23], 'Units', 'normalized');

% ENERGY FUNCTION CHOICE
global EnergyFcn;
EnergyFcn = 'Gradient';
bg1 = uibuttongroup(hpmid, 'Title','Function', 'units', 'normalized', ...
	'position', [0.01 0.51 0.23 0.48], 'SelectionChangedFcn', @onEnergyFcn);

uicontrol(bg1,'Style','radiobutton','String','Gradient',...
	'units', 'normalized','Position',[0.0 0.0 0.5 1.0], ...
	'selected', 'on');
uicontrol(bg1,'Style','radiobutton','String','HoG',...
	'units', 'normalized','Position',[0.5 0.0 1.0 1.0]);

% ENERGY DISPLAY CHOICE
global EnergyDisp;
EnergyDisp = 'Energy';
bg2 = uibuttongroup(hpmid, 'Title','Display', 'units', 'normalized', ...
	'position', [0.01 0.01 0.23 0.48], 'SelectionChangedFcn', @onEnergyDisp);
uicontrol(bg2,'Style','radiobutton', 'String','Energy', ...
	'units', 'normalized', 'Position',[0.0 0.0 0.5 1.0], 'selected', 'on');
uicontrol(bg2,'Style','radiobutton','String','EnergyFlow',...
	'units', 'normalized', 'Position',[0.5 0.0 1.0 1.0]);

% ENEGY PREVIEW
global Energy;

global EnergyPreview;
EnergyPreview = axes('parent', hpmid, 'position', [0.26 0.01 0.73 0.99]);
imageShow(EnergyPreview, Energy);

%% BOTTOM PANEL
hpbot = uipanel(f, 'Title','Result','FontSize',12,...
	'Position',[0.0 0.01 1.0 0.74], 'Units', 'normalized');

% RUN BUTTON
uicontrol(hpbot, 'Style', 'pushbutton', 'String', 'Run',...
	'Units', 'normalized','Position', [0.01 .85 0.12 0.10],...
	'Callback', @onRun);

% STEP BUTTON
uicontrol(hpbot, 'Style', 'pushbutton', 'String', 'Step',...
	'Units', 'normalized','Position', [0.14 0.85 0.12 0.10],...
	'Callback', @onStep);

% SAVE BUTTON
uicontrol(hpbot, 'Style', 'pushbutton', 'String', 'Save',...
	'Units', 'normalized','Position', [0.01 0.73 0.25 0.10],...
	'Callback', @onSave);

% ADD OR DELETE
choice = uibuttongroup(hpbot, 'units', 'normalized', ...
	'position', [0.01 0.6 0.25 0.1], ...
	'SelectionChangedFcn', @onChoice);
global isAdd;
isAdd = true;

uicontrol(choice,'Style','radiobutton','String','Add','units', 'normalized', ...
	'Position',[0.05 0.3 0.5 0.5], 'selected', 'on');

uicontrol(choice,'Style','radiobutton', 'String','Delete',...
	'units', 'normalized', 'Position',[0.5 0.3 0.5 0.5]);

% HEIGHT SLIDER
uicontrol(hpbot,'Style','text', 'Units', 'normalized',...
	'Position',[0.01, 0.45, 0.25, 0.1], 'String', 'Height');

global slideHeight;
slideHeight = uicontrol ( hpbot, 'style', 'slider', 'string', 'Height', ...
	'Units', 'normalized', 'position', [0.01, 0.40, 0.25, 0.05], ...
	'min', 0, 'max', 100, 'value', 10, 'callback', @onHeight);

global textHeight;
textHeight = uicontrol(hpbot,'Style','text', 'Units', 'normalized',...
	'Position', [0.26, 0.375, 0.05, 0.1], 'String', '10');


% WIDTH SLIDER
uicontrol(hpbot,'Style','text', 'Units', 'normalized',...
	'Position',[0.01, 0.25, 0.25, 0.1],'String', 'Width' );

global slideWidth;
slideWidth = uicontrol ( hpbot, 'style', 'slider', 'string', 'Width',...
	'Units', 'normalized', 'position',[0.01, 0.20, 0.25, 0.05], ...
	'min', 0, 'max', 100, 'value', 10,'callback', @onWidth);

global textWidth;
textWidth = uicontrol(hpbot,'Style','text', 'Units', 'normalized',...
	'Position',[0.26, 0.175, 0.05, 0.1], 'String', '10' );


% Size
global newSize;
newSizevalue = inputSize + [10, 10, 0];
newSize = uicontrol(hpbot,'Style','text', 'Units', 'normalized',...
	'Position', [0.01, 0.07, 0.25, 0.1], ...
	'String', sprintf('New Dimension : %s', mat2str(newSizevalue)));

% RESULT PREVIEW
global result;
result = input;
global ResultPreview;
ResultPreview = axes('parent', hpbot, 'Position', [0.33 0.01 0.66 0.99]);
imageShow(ResultPreview, result);
end