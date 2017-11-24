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

Min_Flow = Get_Minimal_Flow(E_F_S);
T = Draw_Flow(Im, Min_Flow);
D_1 = Delete_Flow(Im, Min_Flow);
A_1 = Add_Flow(Im, Min_Flow);

%% TEST
D = Im;
A = Im;

for i = 1:100
	Gray = rgb2gray(D);
	[E_S, ~] = imgradient(Gray,'sobel');
	E_F = Error_Flow(E_S);
	Min_Flow = Get_Minimal_Flow(E_F);
	D = Delete_Flow(D, Min_Flow);
	
	Gray = rgb2gray(A);
	[E_S, ~] = imgradient(Gray,'sobel');
	E_F = Error_Flow(E_S);
	Min_Flow = Get_Minimal_Flow(E_F);
	A = Add_Flow(A, Min_Flow);
end

%% Affichages
Draw_6_Im(Im, 'Im', E_Sobel, 'Gradient Sobel', E_Prewitt, 'Gradient Prewitt', E_Central, 'Gradient Central', E_Intermediate, 'Gradient Intermediate', E_Roberts, 'Gradient Roberts', 1,'Gradients');
Draw_6_Im_Heat(Im, 'Im', E_Sobel, 'Gradient Sobel', E_Prewitt, 'Gradient Prewitt', E_Central, 'Gradient Central', E_Intermediate, 'Gradient Intermediate', E_Roberts, 'Gradient Roberts', 2,'Gradients Heat');
Draw_6_Im_Heat(Im, 'Im', E_F_S, 'Gradient Sobel', E_F_P, 'Gradient Prewitt', E_F_C, 'Gradient Central', E_F_I, 'Gradient Intermediate', E_F_R, 'Gradient Roberts', 3,'Flow');

figure(4);
imagesc(T);

figure(5);
imagesc(D);
imwrite(D, strcat(file, '_100Iterm.png'));

figure(6);
imagesc(A);
imwrite(A, strcat(file, '_100Iterp.png'));
