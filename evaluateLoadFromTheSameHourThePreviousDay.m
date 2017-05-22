%%load from the same hour from the previous day
%get the hour DATA{34271,1}(13:17)
for i=34271:-1:1
    if i<50
        flag=1;
        DATA{i,7}=nan;
    else
        tempHour = DATA{i,1}(13:17);
        j=i-1;
        tempCount=1;
        flag=0;
        while (~isequal(DATA{j,1}(13:17),tempHour) | tempCount==1)
            tempCount = tempCount + 1;
            j=j-1;
            if j==0
                flag=1;
                break;
            end
        end
        if(flag==0)
            DATA{i,7}=DATA{j,2};
        else
            DATA{i,7}=nan;
        end
    end
end