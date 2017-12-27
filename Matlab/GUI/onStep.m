function onStep(source, event)
global ResultPreview;
global result;
global inputSize;
global slideWidth;
global slideHeight;

nb = 5;
valueWidth = get(slideWidth, 'value');
valueHeight = get(slideHeight, 'value');

resWidth = zeros(nb, 1) + Inf;
resHeight = zeros(nb, 1) + Inf;

s_width = size(result,2);
s_heigth = size(result,1);

if valueWidth > 0
	Gray = rgb2gray(result);
	[E_S, ~] = imgradient(Gray,'sobel');
	E_F = Error_Flow(E_S);
	[Min_Flow_Width, resWidth] = Get_Minimals_Flow(E_F, nb);
	
end
if valueHeight > 0
	result = imrotate(result, 90);
	Gray = rgb2gray(result);
	[E_S, ~] = imgradient(Gray,'sobel');
	E_F = Error_Flow(E_S);
	[Min_Flow_Height, resHeight] = Get_Minimals_Flow(E_F, nb);
end

id_width = randi(nb);
id_height = randi(nb);

if valueHeight > 0 && resWidth(id_width)/s_width > resHeight(id_height)/s_heigth
	result = get_choice(result, Min_Flow_Height(:,id_height));
	result = imrotate(result, -90);
	valueHeight = valueHeight - 1;
	set(slideHeight, 'value', valueHeight);
	onHeight();
elseif valueWidth > 0 && resWidth(id_width)/s_width < resHeight(id_height)/s_heigth
	if valueHeight > 0
		result = imrotate(result, -90);
	end
	result = get_choice(result, Min_Flow_Width(:,id_height));
	valueWidth = valueWidth - 1;
	set(slideWidth, 'value', valueWidth);
	onWidth();
end

inputSize = size(result);
updateDim();
imagesc(ResultPreview, result);
axis off;
axis image;
end
