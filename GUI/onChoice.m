function onChoice(source, event)
global isAdd;

tmp = get(event.NewValue, 'string');
if (strcmp(tmp, 'Add'))
    isAdd = true;
else
    isAdd = false;
end

updateDim();

end