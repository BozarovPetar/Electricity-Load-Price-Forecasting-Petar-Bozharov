%%add hour of day field
for i=1:length(DATA)
hour = DATA{i,1}(13:14);
minutes = DATA{i,1}(16:17);
hours = str2num(hour);
if(minutes=='30')
hours=hours+0.5;
else if (minutes=='15')
hours=hours+0.25;
end
end
DATA{i,9} = hours;
end