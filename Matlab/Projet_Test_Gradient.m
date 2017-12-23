%% Initialisation
close all;					% Fermeture des figures
%Lire l'image & Passage en double
file = '../Res/charles_original.jpg';
Im = imread(file);
Im = im2double(Im);
ImGray = rgb2gray(Im);

%E = GetSobelEnergy(ImGray); % Inutile.....

[E_Sobel, ~] = imgradient(ImGray,'sobel');
[E_Prewitt, ~] = imgradient(ImGray,'prewitt');
[E_Central, ~] = imgradient(ImGray,'central');
[E_Intermediate, ~] = imgradient(ImGray,'intermediate');
[E_Roberts, ~] = imgradient(ImGray,'roberts');


[E2_Sobel, ~] = imgradient(E_Sobel,'sobel');
[E2_Prewitt, ~] = imgradient(E_Prewitt,'prewitt');
[E2_Central, ~] = imgradient(E_Central,'central');
[E2_Intermediate, ~] = imgradient(E_Intermediate,'intermediate');
[E2_Roberts, ~] = imgradient(E_Roberts,'roberts');


E_F_S = Error_Flow(E_Sobel);
E_F_P = Error_Flow(E_Prewitt);
E_F_C = Error_Flow(E_Central);
E_F_I = Error_Flow(E_Intermediate);
E_F_R = Error_Flow(E_Roberts);

E2_F_S = Error_Flow(E2_Sobel);
E2_F_P = Error_Flow(E2_Prewitt);
E2_F_C = Error_Flow(E2_Central);
E2_F_I = Error_Flow(E2_Intermediate);
E2_F_R = Error_Flow(E2_Roberts);

%% Affichages
Draw_6_Im(Im, 'Im', E_Sobel, 'Gradient Sobel', E_Prewitt, 'Gradient Prewitt', E_Central, 'Gradient Central', E_Intermediate, 'Gradient Intermediate', E_Roberts, 'Gradient Roberts', 1,'Gradients');
Draw_6_Im_Heat(Im, 'Im', E_Sobel, 'Gradient Sobel', E_Prewitt, 'Gradient Prewitt', E_Central, 'Gradient Central', E_Intermediate, 'Gradient Intermediate', E_Roberts, 'Gradient Roberts', 2,'Gradients Heat');
Draw_6_Im_Heat(Im, 'Im', E2_Sobel, 'Gradient Sobel', E2_Prewitt, 'Gradient Prewitt', E2_Central, 'Gradient Central', E2_Intermediate, 'Gradient Intermediate', E2_Roberts, 'Gradient Roberts', 3,'Laplacien');
Draw_6_Im_Heat(Im, 'Im', E_F_S, 'Gradient Sobel', E_F_P, 'Gradient Prewitt', E_F_C, 'Gradient Central', E_F_I, 'Gradient Intermediate', E_F_R, 'Gradient Roberts', 4,'Flow');
Draw_6_Im_Heat(Im, 'Im', E2_F_S, 'Gradient Sobel', E2_F_P, 'Gradient Prewitt', E2_F_C, 'Gradient Central', E2_F_I, 'Gradient Intermediate', E2_F_R, 'Gradient Roberts', 5,'Flow Laplacien');