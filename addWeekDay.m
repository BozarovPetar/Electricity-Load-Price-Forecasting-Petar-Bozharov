%%add day of the week field (ex. Sunday = 1 , Monday = 2 etc.)
for i=1:34271
    DATA(i,3) = num2cell(weekday(DATA{i,1}));
end