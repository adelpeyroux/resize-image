function onWidth(source, event)
global slideWidth;

value = round(get(slideWidth, 'value'));

set(slideWidth, 'value', value);

global textWidth;
set(textWidth, 'String', value);

updateDim();
end
