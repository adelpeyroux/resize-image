function updateDim()

global slideHeight;
global slideWidth;
global newSize;
global inputSize;
global isAdd;

h = round(get(slideHeight, 'value'));
w = round(get(slideWidth, 'value'));
d = inputSize;
if isAdd
	d = d + [h, w, 0];
else
	d = d - [h, w, 0];
end

set(newSize, 'String', sprintf('New Dimension : %s', mat2str(d)))
end

