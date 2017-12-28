function saveImage(image)
[file,path] = uiputfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
	'*.*','All Files' },'Save Image', 'result.png');

imwrite(image, strcat([path file]));
end