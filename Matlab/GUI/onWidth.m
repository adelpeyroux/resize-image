function onWidth(source, event)
global slideWidth;

value = round(get(slideWidth, 'value'));

set(slideWidth, 'value', value);

global textWidth;
set(textWidth, 'String', num2str(value));

updateDim();
end
