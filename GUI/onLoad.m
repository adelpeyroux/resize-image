function onLoad(source, event)
global filetxt;
global restxt;
global ResultPreview;
global preview;
global input;
global result;

[input, file, ~] = loadImage();

set(filetxt, 'String', file);
set(restxt, 'String', mat2str(size(input)));

imageShow(preview, input);
updateEnergy();
result = input;
imageShow(ResultPreview, result);
end