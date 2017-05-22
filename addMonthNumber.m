%%add month number field (ex. January = 1 , February = 2 etc.)
for i=1:34271
    DATA(i,4) = num2cell(month(DATA{i,1}));
end