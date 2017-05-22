%%load from the same hour and same day from the previous week
for i=34271:-1:1
    if i<338
        flag=1;
        DATA{i,8}=nan;
    else
        tempHour = DATA{i,1}(13:17);
        tempDay = DATA{i,3};
        j=i-200;
        flag=0;
        while (~isequal( DATA{j,3},tempDay) | ~isequal( DATA{j,1}(13:17),tempHour))
            j=j-1;
            if j==0
                flag=1;
                break;
            end
        end
        if(flag==0)
            DATA{i,8} = DATA{j,2};
        else
            DATA{i,8}=nan;
        end
    end
end