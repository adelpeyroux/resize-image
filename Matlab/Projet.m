%% Initialisation
close all;					% Fermeture des figures
%Lire l'image & Passage en double
file = '../Res/charles_original.jpg';
Im = imread(file);
Im = im2double(Im);
ImGray = rgb2gray(Im);

[E_Sobel, ~] = imgradient(ImGray,'sobel');
E_F_S = Error_Flow(E_Sobel);

Min_Flow = Get_Minimal_Flow(E_F_S);
Min_Flow_Ruse = Get_Minimals_Flow(E_F_S, 1);

Mins_Flows = Get_Minimals_Flow(E_F_S, 50);
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
figure(1);
subplot(2,2,1)
imagesc(Im)
subplot(2,2,2)
imagesc(E_Sobel)

subplot(2,2,3)
imagesc(D)
subplot(2,2,4)
imagesc(A)
