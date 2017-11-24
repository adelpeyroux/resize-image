%% Initialisation
close all;					% Fermeture des figures
%Lire l'image & Passage en double
file = '../Res/charles_original.jpg';
Im = imread(file);
Im = im2double(Im);
ImGray = rgb2gray(Im);

E = GetSobelEnergy(ImGray); % Inutile.....

[E_Sobel, ~] = imgradient(ImGray,'sobel');
[E_Prewitt, ~] = imgradient(ImGray,'prewitt');
[E_Central, ~] = imgradient(ImGray,'central');
[E_Intermediate, ~] = imgradient(ImGray,'intermediate');
[E_Roberts, ~] = imgradient(ImGray,'roberts');

E_F_S = Error_Flow(E_Sobel);
E_F_P = Error_Flow(E_Prewitt);
E_F_C = Error_Flow(E_Central);
E_F_I = Error_Flow(E_Intermediate);
E_F_R = Error_Flow(E_Roberts);


%% Affichages
Draw_6_Im(Im, 'Im', E_Sobel, 'Gradient Sobel', E_Prewitt, 'Gradient Prewitt', E_Central, 'Gradient Central', E_Intermediate, 'Gradient Intermediate', E_Roberts, 'Gradient Roberts', 1,'Gradients');
Draw_6_Im_Heat(Im, 'Im', E_Sobel, 'Gradient Sobel', E_Prewitt, 'Gradient Prewitt', E_Central, 'Gradient Central', E_Intermediate, 'Gradient Intermediate', E_Roberts, 'Gradient Roberts', 2,'Gradients Heat');
Draw_6_Im_Heat(Im, 'Im', E_F_S, 'Gradient Sobel', E_F_P, 'Gradient Prewitt', E_F_C, 'Gradient Central', E_F_I, 'Gradient Intermediate', E_F_R, 'Gradient Roberts', 3,'Flow');