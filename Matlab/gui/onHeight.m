function onHeight(source, event)
global slideHeight;

value = get(slideHeight, 'value');
value = round(value);

set(slideHeight, 'value', value);

global textHeight;
set(textHeight, 'String', value);
end
