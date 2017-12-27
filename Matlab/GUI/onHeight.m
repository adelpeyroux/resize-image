function onHeight(source, event)
global slideHeight;

value = round(get(slideHeight, 'value'));

set(slideHeight, 'value', value);

global textHeight;
set(textHeight, 'String', num2str(value));

updateDim();

end
