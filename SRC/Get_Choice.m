function[input] = Get_Choice(input, Min_Flow)
global isAdd;
if (isAdd)
	input = Add_Flow(input, Min_Flow);
else
	input = Delete_Flow(input, Min_Flow);
end
end